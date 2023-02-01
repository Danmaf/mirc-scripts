alias 15sec_timer {
  msg %wl_chan 02,02...10,12|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|02,02.00,12(0:15)02,02... 00,00play wl_r3_time.mp3
  timer 1 10 msg %wl_chan 02,02...10,12|12.10|12.10|12.10|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:05)02,02...
  timer 1 11 msg %wl_chan 02,02...10,12|12.10|12.10|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:04)02,02...
  timer 1 12 msg %wl_chan 02,02...10,12|12.10|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:03)02,02...
  timer 1 13 msg %wl_chan 02,02...10,12|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:02)02,02...
  timer 1 14 msg %wl_chan 02,02...10,12|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:01)02,02...
}

alias wl_tree {
  msg %wl_chan 15,6[001715] $+ $wordline(00,02,9,$gettok(%wl_tree,17,124),3) 15,6[001815] $+ $wordline(00,02,9,$gettok(%wl_tree,18,124),3) 15,6[001915] $+ $wordline(00,02,9,$gettok(%wl_tree,19,124),3) 15,6[002015] $+ $wordline(00,02,9,$gettok(%wl_tree,20,124),3) 
  msg %wl_chan 15,6[001315] $+ $wordline(00,02,9,$gettok(%wl_tree,13,124),3) 15,6[001415] $+ $wordline(00,02,9,$gettok(%wl_tree,14,124),3) 15,6[001515] $+ $wordline(00,02,9,$gettok(%wl_tree,15,124),3) 15,6[001615] $+ $wordline(00,02,9,$gettok(%wl_tree,16,124),3) 
  msg %wl_chan 15,6[000915] $+ $wordline(00,02,9,$gettok(%wl_tree,9,124),3) 15,6[001015] $+ $wordline(00,02,9,$gettok(%wl_tree,10,124),3) 15,6[001115] $+ $wordline(00,02,9,$gettok(%wl_tree,11,124),3) 15,6[001215] $+ $wordline(00,02,9,$gettok(%wl_tree,12,124),3) 
  msg %wl_chan 15,6[000515] $+ $wordline(00,02,9,$gettok(%wl_tree,5,124),3) 15,6[000615] $+ $wordline(00,02,9,$gettok(%wl_tree,6,124),3) 15,6[000715] $+ $wordline(00,02,9,$gettok(%wl_tree,7,124),3) 15,6[000815] $+ $wordline(00,02,9,$gettok(%wl_tree,8,124),3) 
  msg %wl_chan 15,6[000115] $+ $wordline(00,02,9,$gettok(%wl_tree,1,124),3) 15,6[000215] $+ $wordline(00,02,9,$gettok(%wl_tree,2,124),3) 15,6[000315] $+ $wordline(00,02,9,$gettok(%wl_tree,3,124),3) 15,6[000415] $+ $wordline(00,02,9,$gettok(%wl_tree,4,124),3) 
}

alias answers {
  msg %wl_chan 1,1.....................................................................................
  msg %wl_chan 15,6[000115]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,1,124),2) $+ 02.15,6[000215]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,2,124),2) $+ 02.15,6[000315]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,3,124),2) $+ 02.15,6[000415]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,4,124),2) $+ 02.15,6[000515]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,5,124),2) $+ 02.
  msg %wl_chan 15,6[000615]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,6,124),2) $+ 02.15,6[000715]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,7,124),2) $+ 02.15,6[000815]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,8,124),2) $+ 02.15,6[000915]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,9,124),2) $+ 02.15,6[001015]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,10,124),2) $+ 02.
  msg %wl_chan 15,6[001115]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,11,124),2) $+ 02.15,6[001215]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,12,124),2) $+ 02.15,6[001315]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,13,124),2) $+ 02.15,6[001415]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,14,124),2) $+ 02.15,6[001515]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,15,124),2) $+ 02.
  msg %wl_chan 15,6[001615]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,16,124),2) $+ 02.15,6[001715]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,17,124),2) $+ 02.15,6[001815]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,18,124),2) $+ 02.15,6[001915]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,19,124),2) $+ 02.15,6[002015]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,20,124),2) $+ 02.
  msg %wl_chan 15,6[002115]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,21,124),2) $+ 02.15,6[002215]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,22,124),2) $+ 02.15,6[002315]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,23,124),2) $+ 02.15,6[002415]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,24,124),2) $+ 02.15,6[002515]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,25,124),2) $+ 02.
  msg %wl_chan 15,6[002615]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,26,124),2) $+ 02.15,6[002715]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,27,124),2) $+ 02.15,6[002815]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,28,124),2) $+ 02.15,6[002915]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,29,124),2) $+ 02.15,6[003015]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,30,124),2) $+ 02.
  msg %wl_chan 15,6[003115]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,31,124),2) $+ 02.15,6[003215]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,32,124),2) $+ 02.15,6[003315]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,33,124),2) $+ 02.15,6[003415]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,34,124),2) $+ 02.15,6[003515]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,35,124),2) $+ 02.
  msg %wl_chan 15,6[003615]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,36,124),2) $+ 02.15,6[003715]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,37,124),2) $+ 02.15,6[003815]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,38,124),2) $+ 02.15,6[003915]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,39,124),2) $+ 02.15,6[004015]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,40,124),2) $+ 02.
  msg %wl_chan 15,6[004115]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,41,124),2) $+ 02.15,6[004215]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,42,124),2) $+ 02.15,6[004315]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,43,124),2) $+ 02.15,6[004415]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,44,124),2) $+ 02.15,6[004515]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,45,124),2) $+ 02.
  msg %wl_chan 15,6[004615]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,46,124),2) $+ 02.15,6[004715]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,47,124),2) $+ 02.1,1 $+ $str(.,17) $+ 15,6[004815]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,48,124),2) $+ 02.15,6[004915]01,01.02,02. $+ $wordline(00,02,10,$gettok(%wl_answers,49,124),2) $+ 02.
  msg %wl_chan 1,1.....................................................................................
}

alias passes {
  if (%wl_pass == 1) {
    set %wl_ps 15,12[P]|05,12[P] 
    splay wl_r1_top3.wav
    msg %wl_chan 02,02...00,06( $+ $f_time(%j) $+ )02,02... $+ $gettok(%wl_pitstops,1,124) $+ 02,02.$+ $gettok(%wl_pitstops,2,124) $+ 02,02... $+ $gettok(%wl_ps,1,124) $+ 02,02.$+ $gettok(%wl_ps,2,124) $+ 02,02... 0,0play wl_r1_top3.wav
  }
  if (%wl_pass == 0) {
    set %wl_ps 05,12[P]|05,12[P] 
    splay wl_r1_top3.wav
    msg %wl_chan 02,02...00,06( $+ $f_time(%j) $+ )02,02... $+ $gettok(%wl_pitstops,1,124) $+ 02,02.$+ $gettok(%wl_pitstops,2,124) $+ 02,02... $+ $gettok(%wl_ps,1,124) $+ 02,02.$+ $gettok(%wl_ps,2,124) $+ 02,02... 0,0play wl_r1_top3.wav
  }
}

alias pitstop {
  dec %wl_pit
  if (%wl_pit == 1) {
    set %wl_pitstops 15,12[S]|01,12[S]
    splay wl_r3_pitstop_1.mp3
    timer 1 15 set %wl_mode 1
  }
  if (%wl_pit == 0) {
    set %wl_pitstops 01,12[S]|01,12[S]
    splay wl_r3_pitstop_2.mp3
    timer 1 15 set %wl_mode 1
  }
  msg %wl_chan 02,02...00,06( $+ $f_time(%j) $+ )02,02... $+ $gettok(%wl_pitstops,1,124) $+ 02,02.$+ $gettok(%wl_pitstops,2,124) $+ 02,02... 00,00play wl_r3_pitstop_1.mp3
  msg %wl_chan 02,02...10,12|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|12.10|02,02.00,12(0:15)02,02...
  timer -m 1 750 answers
  timer 1 10 msg %wl_chan 02,02...10,12|12.10|12.10|12.10|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:05)02,02...
  timer 1 11 msg %wl_chan 02,02...10,12|12.10|12.10|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:04)02,02...
  timer 1 12 msg %wl_chan 02,02...10,12|12.10|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:03)02,02...
  timer 1 13 msg %wl_chan 02,02...10,12|12.10|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:02)02,02...
  timer 1 14 msg %wl_chan 02,02...10,12|12.10|02,02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02.10|02,02.00,12(0:01)02,02...
  timer 1 15 msg %wl_chan 02,02...00,06( $+ $f_time(%j) $+ )02,02... $+ $gettok(%wl_pitstops,1,124) $+ 02,02.$+ $gettok(%wl_pitstops,2,124) $+ 02,02...
  timer 1 15 starttime
  timer 1 15 msg %wl_chan 0,2 %wl_question 
}

alias wronganswers {
  inc %wl_wrong
  if (%wl_wrong == 1) {
    splay wl_r1_eliminate.wav
    set %wl_wrongs 0,4(X)|1,5(X)|1,5(X)|1,5(X)|1,5(X)
    msg %wl_chan %wl_wrongs 0,0play wl_r1_eliminate.wav
  }
  if (%wl_wrong == 2) {
    splay wl_r1_eliminate.wav
    set %wl_wrongs 0,4(X)|0,4(X)|1,5(X)|1,5(X)|1,5(X)
    msg %wl_chan %wl_wrongs 0,0play wl_r1_eliminate.wav
  }
  if (%wl_wrong == 3) {
    splay wl_r1_eliminate.wav
    set %wl_wrongs 0,4(X)|0,4(X)|0,4(X)|1,5(X)|1,5(X)
    msg %wl_chan %wl_wrongs 0,0play wl_r1_eliminate.wav
  }
  if (%wl_wrong == 4) {
    splay wl_r1_eliminate.wav
    set %wl_wrongs 0,4(X)|0,4(X)|0,4(X)|0,4(X)|1,5(X)
    msg %wl_chan %wl_wrongs 0,0play wl_r1_eliminate.wav
  }
  if (%wl_wrong == 5) {
    splay wl_r3_end.mp3
    set %wl_wrongs 0,4(X)|0,4(X)|0,4(X)|0,4(X)|0,4(X)
    msg %wl_chan %wl_wrongs 0,0play wl_r3_end.mp3
    timers off
    set %wl_mode 0
    set %wl_win 0
  }
}

dialog wl {
  title "New Project"
  size -1 -1 710 510
  option pixels

  box "Ведущему", 1, 0 0 710 50
  button "Старт", 2, 10 20 45 25
  button "Титры", 3, 60 20 45 25
  button "Преклозинг", 4, 110 20 75 25
  button "Правила игры", 5, 190 20 85 25
  button "Интерактив", 6, 280 20 75 25
  button "+m", 7, 360 20 25 25
  button "Регистрация", 8, 390 20 75 25
  edit "", 9, 470 20 100 21
  box "1 раунд", 10, 0 50 710 180
  button "Показать 49ку", 11, 10 70 95 25
  button "Начать раунд", 12, 110 70 85 25
  button ">", 13, 200 70 25 25
  edit "0", 14, 230 70 20 21
  button "Вопрос", 15, 250 70 55 25
  button "Время", 16, 310 70 45 25
  button "Ответы", 17, 360 70 55 25
  button "Верный", 18, 420 70 55 25
  button "Отсев", 19, 480 70 45 25
  button "Три", 20, 550 70 45 25
  button "Два", 21, 600 70 45 25
  button "Один", 22, 650 70 45 25
  edit "", 23, 10 100 680 61
  edit "", 24, 10 160 680 21
  button "КОНЕЦ ПЕРВОГО РАУНДА", 25, 10 190 675 25
  
  box "2 раунд", 26, 0 230 710 150
  button "Показать шестерых", 27, 10 250 115 25
  button "Начать раунд", 28, 130 250 85 25
  button "Вопрос", 29, 220 250 55 25
  button "5 секунд", 30, 280 250 65 25
  button "V", 31, 350 250 25 25
  button "X", 32, 380 250 25 25
  button "Кто покидает игру?", 33, 540 250 145 25
  edit "", 34, 10 280 100 21
  edit "", 35, 110 280 100 21
  edit "", 36, 210 280 100 21
  edit "", 37, 390 280 100 21
  edit "", 38, 490 280 100 21
  edit "", 39, 590 280 100 21
  edit "", 40, 10 300 680 51
  edit "", 41, 10 350 680 21
  
  box "3 раунд", 42, 0 380 710 130
  button "Финалист", 43, 10 400 65 25
  button "Дерево", 44, 80 400 55 25
  button "Начать раунд", 45, 140 400 85 25
  button "Показать ответы", 46, 230 400 105 25
  button "Начать игру", 47, 340 400 75 25
  button "V", 48, 420 400 25 25
  button "X", 49, 450 400 25 25
  button "Стоп", 50, 650 400 35 25
  edit "", 51, 10 430 680 51
  edit "", 52, 10 480 330 21
  edit "49", 53, 340 480 30 21
  edit "3:00", 54, 650 480 40 21
}

alias wl {
  dialog -mots wl wl
  set %wl_chan $active
  did -ra wl 9 %wl_chan
}

alias logotype {
  msg %wl_chan 02,02.............................................................................
  msg %wl_chan 02,02........................11,11**02,02.......................11,11**02,02..........................
  msg %wl_chan 02,02.............................................................................
  msg %wl_chan 02,02........11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11******02,02....11,11******02,02....11,11***02,02..11,11******02,02....11,11*******02,02.......
  msg %wl_chan 02,02.......11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11**02,02........
  msg %wl_chan 02,02........11,11***********02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02..11,11***02,02....11,11******02,02........
  msg %wl_chan 02,02...................................................................11,11**02,02........
  msg %wl_chan 02,02..............11,11***02,02.........11,11***02,02....11,11**02,02.....11,11***02,02....11,11*******02,02...11,11*******02,02.11,11***02,02.........
  msg %wl_chan 02,02.............11,11***02,02.........11,11***02,02....11,11****02,02...11,11***02,02....11,11***02,02.......11,11***02,02..................
  msg %wl_chan 02,02............11,11***02,02.........11,11***02,02....11,11***02,02.11,11**02,02.11,11***02,02....11,11*******02,02.....11,11******02,02..............
  msg %wl_chan 02,02...........11,11***02,02.........11,11***02,02....11,11***02,02...11,11****02,02....11,11***02,02..............11,11***02,02.............
  msg %wl_chan 02,02..........11,11*********02,02...11,11***02,02....11,11***02,02.....11,11**02,02....11,11********02,02....11,11********02,02..............
  msg %wl_chan 02,02.............................................................................
  msg %wl_chan 02,02.............................................................................
  msg %wl_chan Мини-игра
}

on 1:dialog:wl:edit:*: {
  if ($did == 9) set %wl_chan $did(wl, 9)
}  

on 1:dialog:wl:sclick:*: {

  if ($did == 2) {
    unset %wl_*
    timers off
    set %wl_chan $did(9)
    mode %wl_chan +m
    splay wl_intro.mp3
    msg %wl_chan 0,0play wl_intro.mp3
    timer 1 21 logotype
    timer 1 23 splay wl_meet_12s.mp3
    timer 1 23 msg %wl_chan 0,0play wl_meet_12s.mp3
  }

  if ($did == 3) {
    splay wl_close_30.mp3
    msg %wl_chan 0,0play wl_close_30.mp3
  }

  if ($did == 5) {
    if (%wl_round == 3) {
      msg %wl_chan Итак, %wl_player $+ , ты находишься в нашем зале, где разыгрываются приличные суммы.
      timer 1 3 msg %wl_chan Чтобы их заработать, тебе нужно отвечать верно на наши вопросы.
      timer 1 6 msg %wl_chan Перед тобой будет стенка с 49 словами. Каждое слово - ответ на один из вопросов.
      timer 1 9 msg %wl_chan Даёшь верный ответ - сумма из дерева твоя. Кстати, вот и оно:
      timer 1 12 wl_tree
      timer 1 15 msg %wl_chan Ошибёшься - и "Красный крест" тебя накажет, поставив крестик в твой бюллетень
      timer 1 18 msg %wl_chan Эта организация поставит тебе такую отметку 4 раза, давая неверные ответы, а вот пятая такая отметка, сделает такой документ недействительным и ты потеряешь всё.
      timer 1 21 msg %wl_chan На всё про всё тебе даётся 3 минуты основного времени, в течение которых я могу спокойно задавать вопросы.
      timer 1 24 msg %wl_chan Дважды тебе даётся возможность скушать тортик, пересмотрев варианты. У тебя на сие действие будет 15 секунд.
      timer 1 27 msg %wl_chan Чтобы активировать эту возможность, введи команду 04стоп
      timer 1 30 msg %wl_chan Помимо этого ты можешь дважды пропустить вопрос. Введи команду 04пас и я тебе задам новый вопрос.
      timer 1 33 msg %wl_chan Деньги можно забрать в любой момент игры, кроме взятия питстопа и дачи 5 неверного ответа. Команда для остановки 04exit
      timer 1 36 msg %wl_chan Ответы принимаются на канал в формате 04x
      timer 1 39 msg %wl_chan Лишние вопросы есть?
    }
  }

  if ($did == 43) {
    set %wl_round 3
    set %wl_pit 2
    set %wl_pitstops 15,12[S]|15,12[S]
    set %wl_time 180
    set %wl_tree 1000|2000|3000|4000|5000|10000|20000|30000|40000|50000|60000|70000|80000|90000|100000|200000|300000|400000|500000|1000000
    set %wl_wrong 0
    set %wl_player $did(6)
    splay wl_r3_begin.mp3
    msg %wl_chan 0,0play wl_r3_begin.mp3
    timer 1 2 mode %wl_chan +v %wl_player
  }

  if ($did == 8) {
    splay wl_r1_end.mp3
    msg %wl_chan 0,0play wl_r1_end.mp3
    timer 1 1 msg %wl_chan 02,02.........02,0207(08 $wordline(08,02,24,Выигрыш %wl_player,2) 07)02,02.........
    timer 1 1 msg %wl_chan 02,02........02,0207(00 $wordline(00,02,26,%wl_win,2) 07)02,02........
    timer 1 3 mode %wl_chan -v %wl_player
  }

  if ($did == 45) {
    splay wl_r3_start.mp3
    msg %wl_chan 0,0play wl_r3_start.mp3
  }

  if ($did == 46) {
    ans_load
    splay wl_r3_answers.mp3
    msg %wl_chan 0,0play wl_r3_answers.mp3
    answers
  }

  if ($did == 47) {
    questionbase
    splay wl_r3_time.mp3
    15sec_timer
    timer 1 15 msg %wl_chan 02,02...00,06( $+ $f_time(%j) $+ )02,02... $+ $gettok(%wl_pitstops,1,124) $+ 02,02.$+ $gettok(%wl_pitstops,2,124) $+ 02,02...
    timer 1 15 starttime
    timer 1 15 set %wl_mode 1
    timer 1 16 msg %wl_chan 0,2 %wl_question 
  }

  if ($did == 49) {
    wronganswers
  }

  if ($did == 50) {
    pitstop
    timer1000 -p
  }

  if ($did == 14) {
    wronganswers
  }

}

on *:INPUT:*: {
  if ($1 == стоп) && (%wl_mode == 1) && ($nick == %wl_player) {
    set %wl_mode 0
    pitstop
  }
  if ($1 == пас) && (%wl_mode == 1) && ($nick == %wl_player) {
    dec %wl_pass
    passes
    questionbase
    timer 1 1 msg %wl_chan 0,2 %wl_question 
  }
  if ($1 == exit) && (%wl_mode == 1) && ($nick == %wl_player) {
    timers off
    set %wl_mode 0
    set %wl_win $gettok(%wl_tree,%wl_price,124)
    splay wl_r3_end.mp3
    msg %wl_chan 00,00play wl_r3_end.mp3
  }
  if (%wl_mode == 1) && ($nick == %wl_player) {
    set %wl_answer2 $1
    if (($1 >= 1) && ($1 <= 49)) {
      if (%wl_number == %wl_answer2) {
        inc %wl_price
        splay wl_r3_correct.wav
        msg %wl_chan 2,2.00,06[ $+ %wl_number $+ ]02,02.03,03. $+ $wordline(00,03,10,%wl_answer,2) $+ 03.02,02.06,06.00 $+ $gettok(%wl_tree,%wl_price,124) $+ 06.02,02.01,01.15 $+ %wl_price $+ /2001,01.02,02. 00,00play wl_r3_correct.wav
        set %wl_answers $puttok(%wl_answers, -, %wl_number, 124)
        if (%wl_price == 20) {
          timers off
          set %wl_mode 0
          splay wl_r3_end_win.mp3
          msg %wl_chan 0,0play wl_r3_end_win.mp3
        }
      }
      else {
        msg %wl_chan 2,2.00,06[ $+ %wl_number $+ ]02,02.05,05. $+ $wordline(00,05,10,%wl_answer,2) $+ 05.
        wronganswers
      }
      questionbase
      timer 1 1 msg %wl_chan 0,2 %wl_question 
    }
  }
}

on *:TEXT:*:%wl_chan: {
  if ($1 == стоп) && (%wl_mode == 1) && ($nick == %wl_player) {
    set %wl_mode 0
    pitstop
  }
  if ($1 == пас) && (%wl_mode == 1) && ($nick == %wl_player) {
    dec %wl_pass
    passes
    questionbase
    timer 1 1 msg %wl_chan 0,2 %wl_question 
  }
  if ($1 == стопигра) && (%wl_mode == 1) && ($nick == %wl_player) {
    timers off
    set %wl_mode 0
    set %wl_win $gettok(%wl_tree,%wl_price,124)
    splay wl_r3_end.mp3
    msg %wl_chan 00,00play wl_r3_end.mp3
  }
  if (%wl_mode == 1) && ($nick == %wl_player) {
    set %wl_answer2 $1
    if (($1 >= 1) && ($1 <= 49)) {
      if (%wl_number == %wl_answer2) {
        inc %wl_price
        splay wl_r3_correct.wav
        msg %wl_chan 2,2.00,06[ $+ %wl_number $+ ]02,02.03,03. $+ $wordline(00,03,10,%wl_answer,2) $+ 03.02,02.06,06.00 $+ $gettok(%wl_tree,%wl_price,124) $+ 06.02,02.01,01.15 $+ %wl_price $+ /2001,01.02,02. 00,00play wl_r3_correct.wav
        set %wl_answers $puttok(%wl_answers, -, %wl_number, 124)
        if (%wl_price == 20) {
          timers off
          set %wl_mode 0
          splay wl_r3_end_win.mp3
          msg %wl_chan 0,0play wl_r3_end_win.mp3
        }
      }
      else {
        msg %wl_chan 2,2.00,06[ $+ %wl_number $+ ]02,02.05,05. $+ $wordline(00,05,10,%wl_answer,2) $+ 05.
        wronganswers
      }
      questionbase
      timer 1 1 msg %wl_chan 0,2 %wl_question 
    }
  }
}

alias -l questionbase {
  var %wl_q $read(scripts\wl\wl_base.txt, $rand(1, $lines(scripts\wl\wl_base.txt)))
  write -dl $+ $readn scripts\wl\wl_base.txt
  set %wl_question $gettok(%wl_q, 1, 124)
  set %wl_answer $gettok(%wl_q, 2, 124)
  set %wl_number $gettok(%wl_q, 3, 124)
}

alias -l ans_load {
  var %wl_ans $read(scripts\wl\wl_answers.txt, $rand(1, $lines(scripts\wl\wl_answers.txt)))
  write -dl $+ $readn scripts\wl\wl_answers.txt
  set %wl_answers %wl_ans
}

alias starttime {
  timer1000 180 1 minus1
}

alias minus {
  set %j 180
  set %p 0
  set %v 1000
  set %b 1000
  timer997 180 1 minus1
  timer998 180 1 didushka1
}

alias minus1 {
  set %j $puttok(%j, $calc(%j - 1), 1, 32)
  if (%j == 0) {
    splay wl_r3_end.mp3
    msg %wl_chan 02,02...00,06(0:00)02,02... $+ $gettok(%wl_pitstops,1,124) $+ 02,02.$+ $gettok(%wl_pitstops,2,124) $+ 02,02... 00,00play wl_r3_end.mp3
    timers off
    set %wl_mode 0
  }
}

alias didushka1 {
  did -ra wl 54 $f_time(%j,n:ss)
}
