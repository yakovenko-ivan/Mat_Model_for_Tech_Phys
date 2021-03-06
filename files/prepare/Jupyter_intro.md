# Введение в работу с блокнотами Jupyter

## Что такое блокнот Jupyter?
[Jupyter](https://jupyter.org/index.html) - это веб приложение с исходным кодом, которое позволяет создавать и обмениваться документами содержащими исполняемый 
программный код на многих языках, в том числе python, R и Julia, математические уравнения, визуализации и поясняющий текст. 

## Запуск сревера Jupyter
Для запуска сервера Jupyter можно использовать командную строку или ярлык Jupyter Notebook в Windows. 

Откройте терминал и наберите команду 
```Bash
jupyter notebook
```
![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/jupyter_start.gif?raw=true)

Данная команда запустит сервер Jupyter, после чего должно автоматически открыться окно браузера. Если окно браузера не открывается,
можно открыть его вручную и перейти по адресу который выводится в терминале (http://localhost:8888/).

Для создания первого блокнота нажмите кнопку New в правом верхнем углу браузера.
![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/jupyter_new_notebook.gif?raw=true)

## Исполнение кода в ячейке Jupyter

Под меню расположены ячейки для записи и выполнения кода, они начинаются с `In [ ]:`. Попробуем ввести простую команду инициализации 
переменной x 

```Python
x = 1.0
```
для исполнения кода в ячейке нужно нажать комбинацию клавиш *Shift+Enter* на клавиатуре или кнопку `Run` в меню сверху. После выполнения
кода в ячейке, её индекс изменится на `In [1]:`, т.к. это первая команда которую мы выполнили в блокноте.
Результатом выполнения кода в ячейке стала инициализация переменной x со значением 1.0.
Попробуем вывести это значение на экран в следующей ячейке, которая создается автоматически после исполнения кода в первой ячейке.

```Python
print (x)
```
После нажатия *Shift+Enter* мы увидим, что индекс второй ячейки поменяется на `In [2]:`, а после неё появится результат команды `print (x)`.

![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/jupyter_execute_cell.gif?raw=true)

## Перемещение ячеек

Для перемещения используются стрелки меню. 
![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/jupyter_moving_cell.gif?raw=true)

Для удаления ячейки наведите щелкните левой кнопкой мыши на её индексе и нажмите *d+d*.
![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/jupyter_deleting_cell.gif?raw=true)

Чтобы добавить ячейку снизу можно использовать кнопку `+` в меню. С помощью `Insert - Insert Cell Below` и `Insert - Insert Cell Above`
 можно добавить ячейку сверху или снизу от активной. 

## Изменение типа ячеек

В ячейке Jupyter может быть не только исполняемый код, но и текст, изображения или даже видео. Чтобы изменить тип ячейки на текстовый
нажмите `Cell - Cell Type - Markdown`.
![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/jupyter_markdown_cell.gif?raw=true)

[Markdown](https://www.markdownguide.org/) - это текстовый формат с базовыми возможностями форматирования, распространенный для написания документации к программным
кодам. Изучить Markdown достаточно легко, так как возможности форматирования сильно ограничены и легко помещаются в небольшую 
[шпаргалку](https://www.markdownguide.org/cheat-sheet/). В Jupyter возможности Markdown расширены математическим движком [MathJax](https://www.mathjax.org/),
что позволяет использовать синтаксис близкий к LaTeX для написания формул. Как и в LaTeX формулы записываются между двумя знаками `$`:
`$...$`. Для записи формулы с новой строки её следует записывать между сдвоенными знаками `$`: `$$...$$`.
![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/jupyter_markdown_latex_cell.gif?raw=true)









