alias regstart {
  echo %zs_chan Как только вам покажется, что время реги истекло, введите команду - /stopreg
  set %zs_reg 1
  set %z_players
  msg %zs_chan 54,36/ $wordline(54,36,67,Регистрация на игру началась.,2) 54\
  msg %zs_chan 54,36\ $wordline(54,36,67,Отправляйте в приват $me й или q с целью поиграть.,2) 54,36/ 0,0play zs_q_bed1.mp3:loop
  splay zs_q_bed1.mp3
  timer 1 300 msg %zs_chan 54,36/ $wordline(54,36,67,Регистрация на игру продолжается.,2) 36\
  timer 1 300 msg %zs_chan 54,36\ $wordline(54,36,67,Отправляйте в приват 04 $+ $me $- 54,36й или q с целью поиграть.,2)
  timer 1 600 set %zs_reg 0
  timer 1 600 msg %zs_chan 54,36/ $wordline(54,36,67,Регистрация на игру закончена.,2) 54\ 0,0play zs_wrong.mp3
  timer 1 600 msg %zs_chan 54,36\ $wordline(54,36,67,Ожидайте начала игры.,2) 54/ 
  timer 1 600 splay zs_wrong.mp3
  timer 1 600 %z_players = $shuftok(%z_players,32)
  timer 1 600 set %mp3loop $false
}

alias stopreg {
  timers off
  set %zs_reg 0
  msg %zs_chan 54,36/ $wordline(54,36,67,Регистрация на игру закончена.,2) 54\ 0,0play zs_wrong.mp3
  msg %zs_chan 54,36\ $wordline(54,36,67,Ожидайте начала игры.,2) 54/ 
  splay zs_wrong.mp3
  %z_players = $shuftok(%z_players,32)
  set %mp3loop $false
}

alias pokaz {
  msg %zs_chan 54,36| $wordline(54,36,35,$gettok(%zs_players, $rand(1,$numtok(%zs_players, 32)),32),2) 54,36|
}

alias intriguepokaz {
  if (%zs_tim == 1) {
    timer 12 2 pokaz
  }
  if (%zs_tim == 2) {
    timer 11 2 pokaz
  }
  if (%zs_tim == 3) {
    timer 9 2 pokaz
  }
  if (%zs_tim == 4) {
    timer 7 2 pokaz
  }
}

alias roll {
  set %zs_num1 $rands(0,9)
  set %zs_num2 $rands(0,9)
  set %zs_num3 $rands(0,9)
  set %zs_q_num %zs_num1 $+ %zs_num2 $+ %zs_num3
  splay zs_q_choose.wav
  msg %zs_chan 0,0play zs_q_choose.wav
  timer1 -m 1 630 msg %zs_chan 54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer2 -m 1 1260 msg %zs_chan 54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer3 -m 1 1890 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer4 -m 1 2520 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer5 -m 1 3150 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer6 -m 1 3780 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,$rands(0,9),2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer7 -m 1 4410 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,%zs_num2,2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer8 -m 1 5040 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,%zs_num2,2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer9 -m 1 5670 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,%zs_num2,2) >54,36< $wordline(54,36,9,$rands(0,9),2) >
  timer10 -m 1 6300 msg %zs_chan 54,36< $wordline(54,36,9,%zs_num1,2) >54,36< $wordline(54,36,9,%zs_num2,2) >54,36< $wordline(54,36,9,%zs_num3,2) >
  timer11 -m 1 6300 gamequestion
}

alias modes {
  if (%zs_zam == 1) || (%zs_zam == 2) {
    set %zs_mode 1
  }
  if (%zs_zam == 0) {
    gamequestion
    set %zs_mode 3  
  }  
}

alias winfr {
  set %zs_pokaz_win $?="Верно ответили (1 - только игрок, 2 - все)"
  if (%zs_pokaz_win == 1) {
    set %zs_fr_win %zs_fr_win
  }
  if (%zs_pokaz_win == 2) {
    set %zs_fr_win $calc(%zs_fr_win + $gettok(%zs_fr_tree,%zs_n_q,124))
  }
}

alias player {
  if (%zs_tim == 1) {
    timer96 1 26 msg %zs_chan 36,54\ $wordline(36,54,35,%zs_player,2) 36,54/
    timer98 1 28 splay zs_walkdown.mp3
    timer99 1 28 msg %zs_chan 00,99play zs_walkdown.mp3
    timer100 1 30 mode %zs_chan +v %zs_player
    timer102 1 32 set %zs_players $remtok(%zs_players,%zs_player,1,32)
    timer103 1 32 set %zs_gamers $addtok(%zs_gamers,%zs_player,32)
  }
  if (%zs_tim == 2) {
    timer96 1 24 msg %zs_chan 36,54\ $wordline(36,54,35,%zs_player,2) 36,54/
    timer98 1 26 splay zs_walkdown.mp3
    timer99 1 26 msg %zs_chan 00,99play zs_walkdown.mp3
    timer100 1 28 mode %zs_chan +v %zs_player
    timer102 1 30 set %zs_players $remtok(%zs_players,%zs_player,1,32)
    timer103 1 30 set %zs_gamers $addtok(%zs_gamers,%zs_player,32)
  }
  if (%zs_tim == 3) {
    timer96 1 19 msg %zs_chan 36,54\ $wordline(36,54,35,%zs_player,2) 36,54/
    timer98 1 21 splay zs_walkdown.mp3
    timer99 1 21 msg %zs_chan 00,99play zs_walkdown.mp3
    timer100 1 23 mode %zs_chan +v %zs_player
    timer102 1 25 set %zs_players $remtok(%zs_players,%zs_player,1,32)
    timer103 1 25 set %zs_gamers $addtok(%zs_gamers,%zs_player,32)
  }
  if (%zs_tim == 4) {
    timer96 1 16 msg %zs_chan 36,54\ $wordline(36,54,35,%zs_player,2) 36,54/
    timer98 1 18 splay zs_walkdown.mp3
    timer99 1 18 msg %zs_chan 00,99play zs_walkdown.mp3
    timer100 1 20 mode %zs_chan +v %zs_player
    timer102 1 22 set %zs_players $remtok(%zs_players,%zs_player,1,32)
    timer103 1 24 set %zs_gamers $addtok(%zs_gamers,%zs_player,32)
  }
}

alias category {
  if (%zs_num1 == 0) {
    set %zs_theme Тема 1
  }
  if (%zs_num1 == 1) {
    set %zs_theme Тема 2
  }
  if (%zs_num1 == 2) {
    set %zs_theme Тема 3
  }
  if (%zs_num1 == 3) {
    set %zs_theme Тема 4
  }
  if (%zs_num1 == 4) {
    set %zs_theme Тема 5
  }
  if (%zs_num1 == 5) {
    set %zs_theme Тема 6
  }
  if (%zs_num1 == 6) {
    set %zs_theme Тема 7
  }
  if (%zs_num1 == 7) {
    set %zs_theme Тема 8
  }
  if (%zs_num1 == 8) {
    set %zs_theme Тема 9
  }
  if (%zs_num1 == 9) {
    set %zs_theme Тема 10
  }
  timer 1 7 msg %zs_chan 54,36< $wordline(54,36,35,%zs_theme,2) >
}

dialog zs {
  title "New Project"
  size -1 -1 390 360
  option pixels
  box "Group Box", 1, 0 0 390 60
  button "Начать игру", 2, 10 20 75 25
  button "Титры", 3, 90 20 45 25
  button "Правила", 4, 140 20 55 25
  button "Фон", 5, 200 20 35 25
  button "+m/-m", 6, 240 20 35 25
  edit "", 7, 280 20 100 21

  box "Group Box", 8, 0 60 390 130
  button "Отбор игрока", 9, 10 80 85 25
  button "Вопрос", 10, 100 80 45 25
  button "V", 11, 150 80 25 25
  button "X", 12, 180 80 25 25
  button "Timer", 13, 210 80 75 25
  button "Goodbye", 14, 290 80 85 25
  edit "", 15, 10 110 370 51
  edit "", 16, 10 160 370 21

  box "Group Box", 17, 0 190 390 130
  button "Ставка", 18, 10 210 55 25
  button "Вопрос", 19, 70 210 55 25
  button "V", 20, 130 210 25 25
  button "X", 21, 160 210 25 25
  button "Timer", 22, 190 210 55 25
  button "Goodbye", 23, 250 210 125 25
  edit "", 24, 10 240 370 51
  edit "", 25, 10 290 370 21

  edit "", 26, 10 330 250 21
  button "+v", 27, 270 330 55 25
  button "-v", 28, 330 330 55 25
}

alias zs_logo {
  msg %zs_chan 54,36/ 54Ш36,36...54А36,36...54Н36,36...54С36,36.......54Н36,36...54А54,36 \
  msg %zs_chan 54,36\ 36,36..54Т36,36...54Ы36,36...54С36,36...54Я36,36...54Ч36,36...54И36,36..54,36 /
}

alias zs {
  dialog -mts zs zs
  set %zs_chan $active
  did -ra zs 7 %zs_chan
  regstart
}

on 1:dialog:zs:edit:*: {
  if ($did == 7) set %zs_chan $did(zs,7)
}

on 1:dialog:zs:sclick:*: {

  if ($did == 2) {
    timers off
    unset %zs_*
    set %zs_chan $did(zs,7)
    set %zs_players %z_players
    set %zs_value SUR
    set %zs_zam 2
    set %zs_n_q 0
    set %zs_fr_tree 20|40|60|80|100|120|140|160|180|200
    mode %zs_chan +m
    splay zs_titles1.mp3
    msg %zs_chan 00,99play zs_titles1.mp3
    timer 1 21 zs_logo
  }

  if ($did == 3) {
    splay zs_q_bed1.mp3
    msg %zs_chan 54,36/ $wordline(54,36,67,Ш А Н С н а Т Ы С Я Ч И,2) 54,36\ 
    msg %zs_chan 54,36| $wordline(54,36,67,Ведущий:,1) 54,36| 
    msg %zs_chan 54,36| $wordline(54,36,67,Патрик Потопа,3) 54,36| 
    msg %zs_chan 54,36| $wordline(54,36,67,Скрипт:,1) 54,36| 
    msg %zs_chan 54,36| $wordline(54,36,67,Дмитрий Данилович,3) 54,36| 
    msg %zs_chan 54,36| $wordline(54,36,67,Тестеры:,1) 54,36| 
    msg %zs_chan 54,36| $wordline(54,36,67,Юрасик,3) 54,36| 
    msg %zs_chan 54,36| $wordline(54,36,67,Ushio-chan,3) 54,36| 
    msg %zs_chan 54,36\ $wordline(54,36,67,2019 год,2) 54,36/ 
  }

  if ($did == 9) {
    set %zs_tim $?="Время (1 - 26, 2 - 24, 3 - 19, 4 - 16)"
    var %nick $gettok(%zs_players, $rand(1,$numtok(%zs_players, 32)),32)
    set %zs_player %nick
    splay zs_reflectors $+ %zs_tim $+ .mp3
    msg %zs_chan 54,36/ $wordline(54,36,35,Компьютер выбирает игрока,2) 54,36\ 00,99play zs_reflectors $+ %zs_tim $+ .mp3
    intriguepokaz
    player
  }

  if ($did == 10) {
    set %zs_prestab $rands(1,160)
    otborquestion
    splay zs_q_bed1.mp3
    msg %zs_chan 54,36/ $wordline(54,36,67,,2) 54,36\  
    var %i 1
    while (%i <= $numtok(%zs_otb_question,126)) {
      msg %zs_chan 54,36| $wordline(54,36,67,$gettok(%zs_otb_question,%i,126),2) 54,36| 0,0play zs_q_bed1.mp3
      inc %i
    }
    msg %zs_chan 54,36\ $wordline(54,36,67,,2) 54,36/  
  }

  if ($did == 11) {
    inc %zs_n_q
    set %zs_mode 1
    splay zs_correct1.mp3
    msg %zs_chan 54,36| $wordline(54,36,30,Правильный ответ: 56 $+ %zs_otb_answer $- ,2) 54,36| 0,0play zs_correct1.mp3
    timer 1 1 msg %zs_chan 54,36/ $wordline(54,36,30,Игрок не потеряет,2) 54,36\  
    timer 1 1 msg %zs_chan 54,36\ $wordline(54,36,30,%zs_prestab %zs_value,2) 54,36/  
  }

  if ($did == 12) {
    splay zs_wrong.mp3
    msg %zs_chan 54,36| $wordline(54,36,30,Правильный ответ: 52 $+ %zs_otb_answer $- ,2) 54,36| 0,0play zs_wrong.mp3
  }

  if ($did == 14) {
    set %zs_win 0
    splay zs_walkdown.mp3
    msg %zs_chan 0,0play zs_walkdown.mp3
    timer 1 3 msg %zs_chan 54,36/ $wordline(54,36,30,Выигрыш %zs_player,2) 54,36\  
    timer 1 3 msg %zs_chan 54,36\ $wordline(54,36,30,%zs_win %zs_value,2) 54,36/  
    timer 1 5 mode %zs_chan -v %zs_player
  }   

  if ($did == 18) {
    set %zs_bet $?="Делать (0 - если на 1 вопросе, >1 - со 2-го вопроса)"
    if (%zs_bet == 0) {
      set %zs_bet 20
      set %zs_guar 0
      echo %zs_chan Ставка в %zs_bet %zs_value принята. 
    }
    if (%zs_bet > 0) && (%zs_n_q >= 2) {
      set %zs_mode 0
      splay zs_bet_in1.wav
      set %zs_guar $calc(%zs_bank - %zs_bet)
      set %zs_bank $calc(%zs_bank - %zs_bet)
      msg %zs_chan 54,36/ $wordline(54,36,30,Ставка: %zs_bet,2) 54,36\ 
      msg %zs_chan 54,36| $wordline(54,36,30,На кону: $calc(%zs_bank + (%zs_bet * 2)),2) 54,36| 
      msg %zs_chan 54,36\ $wordline(54,36,30,Гарантировано: %zs_guar,2) 54,36/ 
      msg %zs_chan 54,36| $wordline(54,36,30,!cancel отмена ставки,2) 54,36| 
      echo %zs_chan Ставка в %zs_bet %zs_value принята. 
    }  
  }

  if ($did == 19) {
    msg %zs_chan 54,36/ $wordline(54,36,67,Вопрос № $+ %zs_n_q,2) 54,36\  
    msg %zs_chan 54,36| $wordline(54,36,67,%zs_question,2) 54,36| 
    msg %zs_chan 54,36\ $wordline(54,36,67,,2) 54,36/  
  }

  if ($did == 20) {
    winfr
    modes
    splay zs_correct1.mp3
    if (%zs_n_q == 1) {
      set %zs_bank %zs_bet
    }
    if (%zs_n_q >= 2) {
      set %zs_bank $calc(%zs_bank + (%zs_bet * 2))
    }
    msg %zs_chan 54,36| $wordline(54,36,30,Правильный ответ: 56 $+ %zs_otb_answer $- ,2) 54,36| 0,0play zs_correct1.mp3
    timer 1 1 msg %zs_chan 54,36/ $wordline(54,36,30,Заработано:,2) 54,36\  
    timer 1 1 msg %zs_chan 54,36\ $wordline(54,36,30,%zs_bank %zs_value,2) 54,36/  
    timer 1 2 inc %zs_n_q
  }

  if ($did == 21) {
    splay zs_wrong.mp3
    msg %zs_chan 54,36| $wordline(54,36,30,Правильный ответ: 52 $+ %zs_answer $- ,2) 54,36| 0,0play zs_wrong.mp3
    set %zs_win $calc(%zs_bank + %zs_prestab)
  }

  if ($did == 22) {
    set %zs_pokaz $?="0 - ответ принят, 1 - старт"
    if (%zs_pokaz == 1) {
      set %zs_pokaz 0
      splay zs_timer.wav
      splay zs_q_bed1.mp3
      msg %zs_chan 54,36/ $wordline(54,36,30,20 секунд,2) 54,36\ 0,0play zs_timer.wav zs_q_bed1.mp3
      timer 1 10 msg %zs_chan 54,36| $wordline(54,36,30,10 секунд,2) 54,36|  
      timer 1 17 msg %zs_chan 54,36| $wordline(54,36,30,3 секунд,2) 54,36|  
      timer 1 18 msg %zs_chan 54,36| $wordline(54,36,30,2 секунд,2) 54,36|  
      timer 1 19 msg %zs_chan 54,36| $wordline(54,36,30,1 секунд,2) 54,36|  
      timer 1 20 msg %zs_chan 54,36\ $wordline(54,36,30,Время подсказчика вышло!,2) 54,36/  
    }
    elseif (%zs_pokaz == 0) {
      splay stop
      timers off
      msg %zs_chan 54,36\ $wordline(54,36,30,Ответ подсказчика принят!,2) 54,36/ 0,0play wav:stop
    }
  }

  if ($did == 23) {
    set %zs_win $calc(%zs_bank + %zs_prestab)
    splay zs_walkdown.mp3
    msg %zs_chan 0,0play zs_walkdown.mp3
    timer 1 3 msg %zs_chan 54,36/ $wordline(54,36,30,Выигрыш %zs_player,2) 54,36\  
    timer 1 3 msg %zs_chan 54,36\ $wordline(54,36,30,%zs_win %zs_value,2) 54,36/  
    timer 1 5 mode %zs_chan -v %zs_player
  } 

  if ($did == 27) {
    set %zs_helper $did(26)
    mode %zs_chan +v %zs_helper
  }

  if ($did == 28) {
    msg %zs_chan 54,36/ $wordline(54,36,30,Выигрыш %zs_helper,2) 54,36\  
    msg %zs_chan 54,36\ $wordline(54,36,30,%zs_fr_win %zs_value,2) 54,36/  
    timer 1 3 mode %zs_chan -v %zs_helper
    timer 1 3 set %zs_fr_win 0
  }

}

on *:INPUT:*: {
  if ($1 == !roll) && (%zs_mode == 1) && ($nick == %zs_player) {
    set %wl_mode 0
    roll
    category
    timer 1 8 msg %zs_chan 54,36/ $wordline(54,36,35,Будем ли менять тему?,2) 54,36\
    timer 1 8 msg %zs_chan 54,36| $wordline(54,36,17,!1 Меняем,1) $wordline(54,36,17,!2 Не меняем,1) 54,36|
    timer 1 8 msg %zs_chan 54,36\ $wordline(54,36,35,Осталось замен: %zs_zam,2) 54,36/
    timer 1 8 set %zs_mode 2
  }
  if ($1 == !cancel) && (%zs_mode == 0) && ($nick == %zs_player) {
    msg %zs_chan 54,36| $wordline(54,36,35,Ставка отменена!,2) 54,36|
    set %zs_bank $calc(%zs_bank + %zs_bet)
  }
  if ($1 == !roll) && (%zs_mode == 3) && ($nick == %zs_player) {
    set %zs_mode 0
    roll
    category
  }
  if ($1 == !1) && (%zs_mode == 2) && ($nick == %zs_player) {
    dec %zs_zam
    msg %zs_chan Вы выбрали замену. Ну что ж, крутите!
    set %zs_mode 3
  }
  if ($1 == !2) && (%zs_mode == 2) && ($nick == %zs_player) {
    msg %zs_chan Хозяин - барин. Продолжаем.
    set %zs_mode 0
  }
}

on *:TEXT:*:%zs_chan: {
  if ($1 == !roll) && (%zs_mode == 1) && ($nick == %zs_player) {
    set %wl_mode 0
    roll
    category
    timer 1 8 msg %zs_chan 54,36/ $wordline(54,36,35,Будем ли менять тему?,2) 54,36\
    timer 1 8 msg %zs_chan 54,36| $wordline(54,36,17,!1 Меняем,1) $wordline(54,36,17,!2 Не меняем,1) 54,36|
    timer 1 8 msg %zs_chan 54,36\ $wordline(54,36,35,Осталось замен: %zs_zam,2) 54,36/
    timer 1 8 set %zs_mode 2
  }
  if ($1 == !cancel) && (%zs_mode == 0) && ($nick == %zs_player) {
    msg %zs_chan 54,36| $wordline(54,36,35,Ставка отменена!,2) 54,36|
    set %zs_bank $calc(%zs_bank + %zs_bet)  
  }
  if ($1 == !roll) && (%zs_mode == 3) && ($nick == %zs_player) {
    set %wl_mode 0
    roll
    category
  }
  if ($1 == !1) && (%zs_mode == 2) && ($nick == %zs_player) {
    dec %zs_zam
    msg %zs_chan Вы выбрали замену. Ну что ж, крутите!
    set %zs_mode 3
  }
  if ($1 == !2) && (%zs_mode == 2) && ($nick == %zs_player) {
    msg %zs_chan Хозяин - барин. Продолжаем.
    set %zs_mode 0
  }
}


on *:TEXT:*:?: {
  if (%zs_reg == 1) {
    var %zs_q $1
    if (%zs_q == й) || (%zs_q == q) && ($findtok(%z_players, $nick, 32) == $null) && ($nick != $me) {
      set %z_players $addtok(%z_players,$nick,32)
      msg $nick 01,08[?]01,01. $wordline(08,01,50,$nick $+ $chr(44) вы зарегистрированы в игре,1) 01.01,08[!]
    }
  }
}

alias -l otborquestion {
  var %zs_q $read(scripts\zs\zs_otb_base.txt, $rand(1, $lines(scripts\zs\zs_otb_base.txt)))
  write -dl $+ $readn scripts\zs\zs_otb_base.txt
  set %zs_otb_question $questionize($gettok(%zs_q, 1, 124),50)
  set %zs_otb_answer $gettok(%zs_q, 2, 124)
  did -ra zs 15 %zs_otb_question
  did -ra zs 16 %zs_otb_answer
}

alias -l gamequestion {
  var %zs_q $read(scripts\zs\ $+ %zs_theme $+ .txt, $rand(1, $lines(scripts\zs\ $+ %zs_theme $+ .txt)))
  write -dl $+ $readn scripts\zs\ $+ %zs_theme + .txt
  set %zs_question $questionize($gettok(%zs_q, 1, 124),50)
  set %zs_answer $gettok(%zs_q, 2, 124)
  did -ra zs 11 %zs_question
  did -ra zs 12 %zs_answer
}
