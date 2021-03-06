# Установка python 3

В данном руководстве описана процедура установки python 3 и сопутствующих библиотек
необходимых для работы с интерактивными лекциями и выполнения практических заданий.

## Установка Anaconda

Существует несколько возможных способов установки python 3, Jupyter и дополнительных
библиотек, простейшим из которых является использование пакета Anaconda.
Для установки Anaconda на свой персональный компьютер перейдите по ссылке
https://www.anaconda.com/distribution/ и загрузите инсталлятор для версии python 3.7 или выше для свой операционной системы (Windows, macOS или Linux).

![Alt Text](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/install.gif?raw=true)

Если доступной памяти недостаточно для установки полной версии Anaconda
можно загрузить минимальный инсталлятор [miniconda](https://docs.conda.io/en/latest/miniconda.html),
в который входят только модули необходимые для работы python.  

**`Внимание !`** в **Windows** при выборе директории установки, отличной от директории по умолчанию убедитесь, что в полном пути к директории отсутствуют буквы кириллицы.   

После загрузки необходимо запустить инсталлятор и следуя инструкциям выполнить установку Anaconda.

## Установка Jupyter и дополнительных библиотек 

После успешной установки Anaconda необходимо расширить наш набор инструментов
путем установки дополнительных библиотек и интерактивной оболочки Jupyter.
* В Windows для установки дополнительных пакетов в Anaconda можно использовать 
[Anaconda Navigator](https://docs.anaconda.com/anaconda/navigator/getting-started/)
  или [командную строку](https://docs.anaconda.com/anaconda/user-guide/tasks/install-packages/)
* В Linux и macOS установка пакетов выполняется с помощью командной строки. 
Достаточно открыть терминал и выполнить следующую команду:

   `conda install jupyter numpy scipy sympy matplotlib`
   
## Запуск Jupyter

После установки Anaconda и Jupyter можно выполнить запуск интерактивной оболочки:
* В Windows из командной строки или используя ярлык Jupyter Notebook
* В Linux и macOS из командной строки, командой

`jupyter notebook`, которая запустит сервер Jupyter и окно браузера для работы с блокнотами.   

## Альтернативные решения

Если по каким-либо причинам установить Anaconda и Jupyter не представляется возможным, для просмотра и интерактивного 
взаимодействия с материалами курса можно использовать инструмент [Google Collab](https://colab.research.google.com/notebooks/intro.ipynb), позволяющий не только просматривать содержимое блокнотов Jupyter, 
но и выполнять блоки с кодом. Однако стилевые настройки блокнота в Google Collab не работают.

**`Внимание !`** В Google Collab не работают стилевые настройки блокнота и время выполнение кода в ячейках может быть значительно 
дольше, чем при использовании Anaconda на персональном компьютере. 

![](https://github.com/yakovenko-ivan/Mat_Model_for_Tech_Phys/blob/master/files/prepare/google_collab.gif?raw=true)
