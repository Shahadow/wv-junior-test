# Тестовое задание для Junior Fullstack
<img width="150" src="https://raw.githubusercontent.com/wowvendor/wowvendor-junior-test/97bf30dc6a091261bd6fc6409e9c8e2791c3d745/images/donut.svg">

## О реализации:
MutationObserver следит за мутациями пончика, и при определённых условиях добавляет данные в JSON, и отправляет их на бекенд (handler.php). 

Дамп базы - runs.sql

#### Баг:
При размере камня "40" столкновение с пончиком не засчитывается, для записи этих событий добавлено ещё одно поле в базу