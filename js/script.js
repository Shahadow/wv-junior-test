document.addEventListener("DOMContentLoaded", function () {
    startListening();
});

window.dataArr = {};


function startListening() {
    characterRun();
    let container = window.character.donut;
    const mutationConfig = {
        attributes: true, childList: false, subtree: false, characterData: false,
        characterDataOldValue: false
    };
    let onMutate = function (mutationsList) {
        mutationsList.forEach(mutation => {
                if (mutation.target.classList.value === 'donut') {
                    characterRun();
                }
                if (window.character.characterPosition === (window.terrain.rockPosition - 115) || window.character.characterPosition === (window.terrain.rockPosition - 116)) {
                    let characterPos = window.character.characterPosition;
                    let rockPos = window.terrain.rockPosition;
                    let rockSize = window.terrain.rockSize;
                    characterJump(characterPos, rockPos, rockSize);
                    window.dataArr['characterPos'] = characterPos;
                    window.dataArr['rockPos'] = rockPos;
                    window.dataArr['rockSize'] = rockSize;
                }
                if (window.character.characterPosition > 1016) {
                    window.endTime = new Date().getTime();
                    const time = window.endTime - window.startTime;
                    console.log('win!');
                    window.dataArr['runTime'] = time;
                    window.dataArr['success'] = 1;
                    if (window.terrain.rockSize === 40) {
                        window.dataArr['easyWin'] = 1;
                    } else {
                        window.dataArr['easyWin'] = 0;
                    }
                    sendData(window.dataArr);
                }
            }
        );
    };
    let observer = new MutationObserver(onMutate);
    observer.observe(container, mutationConfig);
}

function characterRun() {
    console.log('running...');
    window.character.run();
    window.startTime = new Date().getTime();
}

function characterJump(characterPos, rockPos, rockSize) {
    window.character.jump();
    console.log('rock_pos = ' + rockPos, 'rock_size = ' + rockSize, 'char_pos = ' + characterPos);
}

function sendData(data) {
    let request = new XMLHttpRequest();
    request.open('POST', '/handler.php');
    request.setRequestHeader("Content-Type", "application/json");
    request.send(JSON.stringify(data));
    request.onload = function () {
        if (request.status !== 200) {
            console.log(`Error ${request.status}: ${request.statusText}`);
        } else {
            console.log(`Done, got ${request.response.length} chars`);
        }
    };
    window.dataArr = {
        data: []
    };
}