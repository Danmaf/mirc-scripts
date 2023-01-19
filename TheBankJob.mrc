dialog tbj {
  title "New Project"
  size -1 -1 300 530
  option pixels

  box "Для ведущего", 1, 0 0 300 50
  button "Start", 2, 10 20 45 25
  button "End", 3, 60 20 35 25
  button "bg", 4, 100 20 25 25
  button "+m", 5, 130 20 25 25
  button "-m", 6, 160 20 25 25
  edit "", 7, 190 20 100 21

  box "Статитика", 8, 0 50 300 150
  edit "", 9, 10 70 100 21
  edit "", 10, 10 90 100 21
  edit "", 11, 10 110 100 21
  edit "", 12, 10 130 100 21
  edit "", 13, 120 70 50 21
  edit "", 14, 120 90 50 21
  edit "", 15, 120 110 50 21
  edit "", 16, 120 130 50 21
  button "+v", 17, 10 160 25 25
  button "Выпроводить", 18, 40 160 85 25
  button "Статистика", 19, 130 160 75 25
  button "+money", 20, 180 70 55 75
  button "-money", 21, 240 70 55 75
  button "Таймеры", 22, 210 160 85 25

  box "Игровой процесс", 23, 0 200 300 80
  button ">", 24, 10 220 25 25
  edit "0", 25, 40 220 20 21
  button "Start round", 26, 60 220 75 25
  button "MD5", 27, 140 220 35 25
  button "STR", 28, 180 220 35 25
  button "Boxes", 29, 220 220 75 25
  button "Timer", 30, 10 250 35 25
  edit "1:15", 31, 50 250 40 21
  button "5", 32, 130 250 15 25
  button "V", 33, 150 250 25 25
  button "X", 34, 180 250 25 25
  edit "25", 35, 210 250 30 21
  button "Open", 36, 240 250 55 25
  button "Cont", 63, 90 250 35 25

  box "3 раунд", 37, 0 280 300 80
  button "Start timer1", 38, 10 300 75 25
  button "Start timer2", 39, 220 300 75 25
  edit "0:45", 40, 10 330 70 21
  edit "0:45", 41, 220 330 70 21
  button "V", 42, 90 300 25 25
  button "X", 66, 120 300 25 25
  button "V", 67, 160 300 25 25
  button "X", 43, 190 300 25 25

  button "Cont1", 64, 90 330 35 25
  button "cont2", 65, 180 330 35 25


  box "Group Box", 44, 0 360 300 50
  button "Sudden death", 45, 10 380 85 25
  button "Q", 46, 100 380 25 25
  button "5 secs", 47, 130 380 105 25
  button "V", 48, 240 380 25 25
  button "X", 49, 270 380 25 25

  box "При краже", 50, 0 410 300 50
  button "1", 51, 10 430 55 25
  button "2", 52, 70 430 55 25
  button "3", 53, 180 430 55 25
  button "4", 54, 240 430 55 25
  edit "", 55, 130 430 40 21

  box "Распределение финал", 56, 0 460 300 70
  edit "", 57, 10 480 100 21
  edit "", 58, 10 500 100 21
  edit "", 59, 190 480 100 21
  edit "", 60, 190 500 100 21
  button "Сумма фин", 61, 110 480 75 25
  button "Button", 62, 110 510 75 15
}

alias tbj {
  dialog -mots tbj tbj
  set %tbj_chan $active
  did -ra tbj 7 %tbj_chan
}

alias tbj_logo {
  msg %tbj_chan 10,10...........................................................................................................
  msg %tbj_chan 10,10..............08,08----10,10...08,08-----10,10..08,08-----10,10.....08,08--10,10......08,08------10,10....08,08------10,10..08,08-----10,10..08,08--10,10..08,08--10,10..08,08--10,10...08,08---10,10..08,08-----10,10.............
  msg %tbj_chan 10,10.............08,08--10,10..08,08--10,10..08,08--10,10.....08,08--10,10..08,08--10,10...08,08-10,10..08,08-10,10.....08,08--10,10........08,08--10,10..08,08--10,10..08,08--10,10.....08,08--10,10..08,08--10,10..08,08--10,10..08,08----10,10..08,08--10,10................
  msg %tbj_chan 10,10.............08,08--10,10..08,08--10,10..08,08--10,10.....08,08-----10,10...08,08------10,10....08,08------10,10....08,08--10,10..08,08--10,10..08,08-----10,10..08,08------10,10..08,08--10,10.08,08--10,10.08,08--10,10..08,08-----10,10.............
  msg %tbj_chan 10,10.............08,08--10,10..08,08--10,10..08,08--10,10.....08,08--10,10.....08,08--10,10....08,08--10,10...08,08--10,10...08,08--10,10...08,08--10,10..08,08--10,10..08,08--10,10.....08,08--10,10..08,08--10,10..08,08----10,10..08,08--10,10..08,08--10,10................
  msg %tbj_chan 10,10..............08,08----10,10...08,08--10,10.....08,08--10,10....08,08--10,10......08,08--10,10..08,08------10,10...08,08--10,10...08,08--10,10..08,08-----10,10..08,08--10,10..08,08--10,10..08,08--10,10....08,08--10,10..08,08-----10,10.............
  msg %tbj_chan 10,10...........................................................................................................
}

on 1:dialog:tbj:edit:*: {
  if ($did == 7) set %tbj_chan $did(tbj, 7)

  if ($did >= 9) && ($did <= 12) {
    set %tbj_players $did(tbj,9) $did(tbj,10) $did(tbj,11) $did(tbj,12)
  }

  if ($did >= 13) && ($did <= 16) {
    set %tbj_score $did(tbj,13) $did(tbj,14) $did(tbj,15) $did(tbj,16)
  }

  if ($did == 25) set %tbj_round $did(tbj, 25)

}

on 1:dialog:tbj:sclick:*: {

  if ($did == 2) {
    unset %tbj_*
    set %tbj_chan $did(tbj, 7)
    set %tbj_round 0
    set %tbj_players $did(tbj,9) $did(tbj,10) $did(tbj,11) $did(tbj,12)
    set %tbj_score $did(tbj,13) $did(tbj,14) $did(tbj,15) $did(tbj,16)
    mode %tbj_chan +m
    splay tbj_intro.mp3
    msg %tbj_chan 0,0play tbj_intro.mp3
    timer 1 2 msg %tbj_chan Это Внешторгбанк на улице Бутлерова, Санкт-Петербург.
    timer 1 5 msg %tbj_chan Здесь крутится огромный капитал, и в главном сейфе хранятся крупные суммы.
    timer 1 8 msg %tbj_chan И сегодня в розыгрыше будет значительная сумма в три тысячи реальных российских рублей.
    timer 1 15 msg %tbj_chan Такое богатство будут частями закладывать в центральный сейф банка по ящикам на протяжении сегодняшней игры.
    timer 1 20 msg %tbj_chan За это материальное счастье будут сегодня бороться четверо предварительно зарегистрировавшихся игроков.
    timer 1 25 msg %tbj_chan Двое покинут банк только в наручниках, так ничего и не получив. Ещё один получит скромный утешительный приз, а победитель этой схватки - всё, что сможет вынести из сейфа. 
    timer 1 30 msg %tbj_chan Назначенную сумму каждого игрового раунда раскладывают втайне от игроков по депозитным ящикам в огромном сейфе в неравных долях. 
    timer 1 35 msg %tbj_chan В интересах игроков забрать как можно больше денег и успеть покинуть сейф, пока время не вышло.
    timer 1 40 msg %tbj_chan Сегодня банк попытаются обчистить...
    timer 1 45 msg %tbj_chan 95,88( $+ $wordline(98,88,30,Дмитрий,2) $+ 95)
    timer 1 47 msg %tbj_chan 95,88( $+ $wordline(98,88,30,Вадим,2) $+ 95)
    timer 1 49 msg %tbj_chan 95,88( $+ $wordline(98,88,30,Геннадий,2) $+ 95)
    timer 1 51 msg %tbj_chan 95,88( $+ $wordline(98,88,30,Павел,2) $+ 95)
    timer 1 54 msg %tbj_chan Цель - вовремя вынести из банковского сейфа максимально возможные суммы. Миссия игроков - разбогатеть и слинять.
    timer 1 57 msg %tbj_chan Я Дмитрий Данилович, и я подстрекаю вас пойти на... 
    timer 1 60 tbj_logo
  }

  if ($did == 3) {
    splay tbj_closing.mp3
    msg %tbj_chan 0,0play tbj_closing.mp3
  }

  if ($did == 4) {
    splay tbj_bg_main.mp3
    msg %tbj_chan 0,0play tbj_bg_main.mp3
  }

  if ($did == 5) || ($did == 6) {
    splay tbj_comm.mp3
    msg %tbj_chan 0,0play tbj_comm.mp3
    timer 1 5 mode %tbj_chan $did($did)
  }

  if ($did == 17) {
    if ($did(25) == 0) {
      splay tbj_players.mp3
      msg %tbj_chan 0,0play tbj_players.mp3
    }
    mode %tbj_chan +vvvv $did(9) $did(10) $did(11) $did(12)
  }

  if ($did == 18) {
    set %tbj_calc $?="Какого игрока выгоняем?"
    set %tbj_money2 -
    set %tbj_money3 $gettok(%tbj_score,%tbj_calc,32)
    set %tbj_score $puttok(%tbj_score,%tbj_money2,%tbj_calc,32)
    set %tbj_players $puttok(%tbj_players,%tbj_money2,%tbj_calc,32)

    did -ra tbj 9 $gettok(%tbj_players,1,32)
    did -ra tbj 10 $gettok(%tbj_players,2,32)
    did -ra tbj 11 $gettok(%tbj_players,3,32)
    did -ra tbj 12 $gettok(%tbj_players,4,32)

    did -ra tbj 13 $gettok(%tbj_score,1,32)
    did -ra tbj 14 $gettok(%tbj_score,2,32)
    did -ra tbj 15 $gettok(%tbj_score,3,32)
    did -ra tbj 16 $gettok(%tbj_score,4,32)

    splay tbj_leave.mp3
    msg %tbj_chan 0,0play tbj_leave.mp3
  }

  if ($did == 19) {
    if ($numtok(%tbj_players,32) == 4) {
      msg %tbj_chan 54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,1,32),2) $+ 54,46)54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,2,32),2) $+ 54,46)54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,3,32),2) $+ 54,46)54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,4,32),2) $+ 54,46)
      msg %tbj_chan 94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,1,32))),3) $+ 94|94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,2,32))),3) $+ 94|94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,3,32))),3) $+ 94|94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,4,32))),3) $+ 94|
    }
    if ($numtok(%tbj_players,32) == 3) {
      msg %tbj_chan 54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,1,32),2) $+ 54,46)54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,2,32),2) $+ 54,46)54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,3,32),2) $+ 54,46)
      msg %tbj_chan 94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,1,32))),3) $+ 94|94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,2,32))),3) $+ 94|94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,3,32))),3) $+ 94|
    }
    if ($numtok(%tbj_players,32) == 2) {
      msg %tbj_chan 54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,1,32),2) $+ 54,46)54,46( $+ $wordline(54,46,22,$gettok(%tbj_players,2,32),2) $+ 54,46)
      msg %tbj_chan 94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,1,32))),3) $+ 94|94,88| $+ $wordline(58,88,22,$f_num($f_money($gettok(%tbj_score,2,32))),3) $+ 94|
    }
  }

  if ($did == 20) {
    set %tbj_calc $?="Какому игроку зачисляем?"
    set %tbj_money $gettok(%tbj_score,%tbj_calc,32)
    set %tbj_money2 $calc(%tbj_money + $gettok(%tbj_boxes2,$did(35),32))
    set %tbj_score $puttok(%tbj_score,%tbj_money2,%tbj_calc,32)

    did -ra tbj 13 $gettok(%tbj_score,1,32)
    did -ra tbj 14 $gettok(%tbj_score,2,32)
    did -ra tbj 15 $gettok(%tbj_score,3,32)
    did -ra tbj 16 $gettok(%tbj_score,4,32)
  }

  if ($did == 21) {
    set %tbj_calc $?="У какого игрока отбираем?"
    set %tbj_calc2 $?="Сколько отбираем?"
    set %tbj_money $gettok(%tbj_score,%tbj_calc,32)
    set %tbj_money2 $calc(%tbj_money - %tbj_calc2)
    set %tbj_score $puttok(%tbj_score,%tbj_money2,%tbj_calc,32)

    did -ra tbj 13 $gettok(%tbj_score,1,32)
    did -ra tbj 14 $gettok(%tbj_score,2,32)
    did -ra tbj 15 $gettok(%tbj_score,3,32)
    did -ra tbj 16 $gettok(%tbj_score,4,32)
  }

  if ($did == 22) {
    msg %tbj_chan 95,88( $wordline(98,88,15,$did(9),1) $+ 46,46 58 $+ $did(40) 98,98_46,46 58 $+ $did(41) 95,88 $wordline(98,88,15,$did(10),3) 95)
  }

  if ($did == 24) {
    inc %tbj_round
    did -ra tbj 25 %tbj_round
  }

  if ($did == 26) {
    if (%tbj_round == 1) || (%tbj_round == 2) {
      set %tbj_bank 1000
    }  
    if ($numtok(%tbj_players,32) == 4) {
      set %tbj_score 0 0 0 0     
    }
    if ($numtok(%tbj_players,32) == 3) {
      set %tbj_score 0 0 0    
    }
    if ($numtok(%tbj_players,32) == 2) {
      set %tbj_score 0 0    
    }
    if (%tbj_round == 3) {
      set %tbj_bank $calc(%tbj_total + $did(57) + $did(58) + $did(59) + $did(60))
    }         
    splay tbj_lets_play.mp3
    msg %tbj_chan 0,0play tbj_lets_play.mp3
    echo %tbj_chan Кнопка MD5 (если значение не равно 0, жми на кнопку ещё раз)
  }

  if ($did == 27) {
    set %tbj_numbers 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
    set %tbj_boxes 0 0 0 0 STEAL STEAL STEAL STEAL BANKRUPT
    set %tbj_total 1000
    set %tbj_max_range 983
    set %tbj_values
    while ($numtok(%tbj_values, 32) != 15) {
      var %tbj_element $rand(0, $min(150,%tbj_max_range))
      set %tbj_values %tbj_values $calc(%tbj_element + 1)
      set %tbj_max_range $calc(%tbj_max_range - %tbj_element)
    }
    set %tbj_values %tbj_values %tbj_max_range
    set %tbj_boxes2 %tbj_boxes %tbj_values
    %tbj_boxes2 = $shuftok(%tbj_boxes2,32)
    if (%tbj_max_range != 0) {
      echo %tbj_chan MD5: $md5(%tbj_boxes2)
    }
    elseif (%tbj_max_range == 0) {
      msg %tbj_chan MD5: $md5(%tbj_boxes2)
      echo %tbj_chan $calc($gettok(%tbj_values,1,32) + $gettok(%tbj_values,2,32) + $gettok(%tbj_values,3,32) + $gettok(%tbj_values,4,32) + $gettok(%tbj_values,5,32) + $gettok(%tbj_values,6,32) + $gettok(%tbj_values,7,32) + $gettok(%tbj_values,8,32) + $gettok(%tbj_values,9,32) + $gettok(%tbj_values,10,32) + $gettok(%tbj_values,11,32) + $gettok(%tbj_values,12,32) + $gettok(%tbj_values,13,32) + $gettok(%tbj_values,1,32) + $gettok(%tbj_values,14,32) + $gettok(%tbj_values,15,32) + $gettok(%tbj_values,16,32))
    }
    echo %tbj_chan %tbj_max_range
  }

  if ($did == 28) {
    msg %tbj_chan STR: %tbj_boxes2
  }

  if ($did == 29) {
    msg %tbj_chan 97,97....59|94,94.........................88,88 $+ $wordline(52,88,14,$f_num($f_money(%tbj_bank)) P,3) $+ 94,94.........................59,97|97,97....
    msg %tbj_chan 97,97....59|94,94...94,88[98 $gettok(%tbj_numbers,1,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,2,32)) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,3,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,4,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,5,32) 94]94,94...59,97|97,97....
    msg %tbj_chan 97,97....59|94,94...94,88[98 $gettok(%tbj_numbers,6,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,7,32)) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,8,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,9,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,10,32) 94]94,94...59,97|97,97....
    msg %tbj_chan 97,97....59|94,94...94,88[98 $gettok(%tbj_numbers,11,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,12,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,13,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,14,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,15,32) 94]94,94...59,97|97,97....
    msg %tbj_chan 97,97....59|94,94...94,88[98 $gettok(%tbj_numbers,16,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,17,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,18,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,19,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,20,32) 94]94,94...59,97|97,97....
    msg %tbj_chan 97,97....59|94,94...94,88[98 $gettok(%tbj_numbers,21,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,22,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,23,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,24,32) 94]94,94...48|94,94...94,88[98 $gettok(%tbj_numbers,25,32) 94]94,94...59,97|97,97....
  }

  if ($did == 30) {
    if (%tbj_round == 1) {
      set %tbj_mode 1
      splay tbj_timer.mp3
      timergame
      msg %tbj_chan 40,40 521:1540  0,0play tbj_timer.mp3
      timer84 1 65 splay tbj_last10secs.mp3
      timer85 1 65 40,40 520:1040  0,0play tbj_last10secs.mp3
    }
    if (%tbj_round == 2) {
      set %tbj_mode 1
      splay tbj_timer.mp3
      timergame
      msg %tbj_chan 40,40 521:3040  0,0play tbj_timer.mp3
      timer84 1 80 splay tbj_last10secs.mp3
      timer85 1 80 40,40 520:1040  0,0play tbj_last10secs.mp3
    }
  }

  if ($did == 32) || ($did == 47) {
    timer991 1 0 echo %tbj_chan 5
    timer992 1 1 echo %tbj_chan 4
    timer993 1 2 echo %tbj_chan 3
    timer994 1 3 echo %tbj_chan 2
    timer995 1 4 echo %tbj_chan 1
    timer996 1 5 splay tbj_no_answer.wav
    timer996 1 5 msg %tbj_chan 0,0play tbj_no_answer.wav
  }

  if ($did == 33) {
    unset %tbj_ignore
    timer84 -p
    timer85 -p
    timer997 -p
    timer998 -p
    splay tbj_correct.wav
    splay tbj_bg1.mp3
    msg %tbj_chan 46,46 58 $+ $f_time(%j,n:ss) 46  0,0play tbj_correct.wav tbj_bg1.mp3
  }

  if ($did == 34) {
    unset %tbj_ignore
    set %tbj_ignore %tbj_sus123
    nexttime
    set %tbj_mode 1
    splay tbj_incorrect.wav
    msg %tbj_chan 40,40 52 $+ $f_time(%j,n:ss) 40  0,0play tbj_incorrect.wav
  }

  if ($did == 36) {
    set %tbj_sus $gettok(%tbj_boxes2,$did(35),32)
    if (%tbj_sus == 0) {
      set %sound tbj_empty
      msg %tbj_chan 54,46( $a_right($did(35),02,54,46) 94,88[ $+ $wordline(98,88,11,$f_num($f_money($gettok(%tbj_boxes2,$did(35),32))) Р,2) 94] 0,0play %sound $+ .mp3
    }
    elseif (%tbj_sus == BANKRUPT) {
      set %sound tbj_empty
      msg %tbj_chan 54,46( $a_right($did(35),02,54,46) 94,88[ $wordline(98,88,11,BANKRUPT,2) 94] 0,0play %sound $+ .mp3
    }
    elseif (%tbj_sus == STEAL) {
      set %sound tbj_steal
      msg %tbj_chan 54,46( $a_right($did(35),02,54,46) 94,88[ $+ $wordline(98,88,11,STEAL,2) 94] 0,0play %sound $+ .mp3
    }
    elseif (%tbj_sus > 0) && (%tbj_sus != STEAL) && (%tbj_sus != BANKRUPT) {
      set %sound tbj_money_box
      msg %tbj_chan 54,46( $a_right($did(35),02,54,46) 94,88[ $+ $wordline(98,88,11,$f_num($f_money($gettok(%tbj_boxes2,$did(35),32))) Р,2) 94] 0,0play %sound $+ .mp3
    }
    splay %sound $+ .mp3
    set %tbj_numbers $puttok(%tbj_numbers, 88.., $did(35), 32)
    set %tbj_bank $calc(%tbj_bank - $gettok(%tbj_boxes2,$did(35),32))
  }

  if ($did == 45) {
    splay tbj_sudden_death.mp3
    msg %tbj_chan 0,0play tbj_sudden_death.mp3
    timer 1 4 splay tbj_bg_qualification.mp3
    timer 1 4 msg %tbj_chan 0,0play tbj_bg_qualification.mp3
  }

  if ($did == 46) {
    set %tbj_mode 1
  }

  if ($did == 48) {
    splay stop
    splay tbj_correct.wav
    msg %tbj_chan 0,0play tbj_correct.wav mp3:stop
  }

  if ($did == 49) {
    splay stop
    splay tbj_incorrect.wav
    msg %tbj_chan 0,0play tbj_incorrect.wav mp3:stop
  }

  if ($did >= 51) && ($did <= 54) {
    set %tbj_money $gettok(%tbj_score,$did($did),32)
    set %tbj_money2 $calc(%tbj_money + $did(55))
    set %tbj_score $puttok(%tbj_score,%tbj_money2,$did($did),32)

    did -ra tbj 13 $gettok(%tbj_score,1,32)
    did -ra tbj 14 $gettok(%tbj_score,2,32)
    did -ra tbj 15 $gettok(%tbj_score,3,32)
    did -ra tbj 16 $gettok(%tbj_score,4,32)
  }

  if ($did == 62) {
    set %tbj_numbers 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
    set %tbj_boxes 0 0 0 0 STEAL STEAL STEAL STEAL BANKRUPT
    set %tbj_boxes3 $did(57) $did(58) $did(59) $did(60)
    set %tbj_total 1000
    set %tbj_max_range 1000
    set %tbj_values
    while ($numtok(%tbj_values, 32) != 11) {
      var %tbj_element $rand(0, $min(150,%tbj_max_range))
      set %tbj_values %tbj_values $calc(%tbj_element + 1)
      set %tbj_max_range $calc(%tbj_max_range - %tbj_element)
    }
    set %tbj_values %tbj_values %tbj_max_range
    set %tbj_boxes2 %tbj_boxes %tbj_boxes3 %tbj_values
    %tbj_boxes2 = $shuftok(%tbj_boxes2,32)
    if (%tbj_max_range != 0) {
      echo %tbj_chan MD5: $md5(%tbj_boxes2)
    }
    elseif (%tbj_max_range == 0) {
      msg %tbj_chan MD5: $md5(%tbj_boxes2)
    }
    echo %tbj_chan %tbj_max_range
  }

  if ($did == 38) {
    set %tbj_stor 1
    splay tbj_timer.mp3
    timergame
    msg %tbj_chan 40,40 520:4540  0,0play tbj_timer.mp3
    timer84 1 80 splay tbj_last10secs.mp3
    timer85 1 80 40,40 520:1040  0,0play tbj_last10secs.mp3
  }

  if ($did == 39) {
    set %tbj_stor 2
    splay tbj_timer.mp3
    timergame
    msg %tbj_chan 40,40 520:4540  0,0play tbj_timer.mp3
    timer84 1 80 splay tbj_last10secs.mp3
    timer85 1 80 40,40 520:1040  0,0play tbj_last10secs.mp3
  }

  if ($did == 63) {
    set %tbj_mode 1
    nexttime
    splay tbj_timer.mp3
    msg %tbj_chan 46,46 58 $+ $f_time(%j,n:ss) 46  0,0play tbj_timer.mp3
  }

  if ($did == 64) {
    set %tbj_mode 1
    set %tbj_stor 1
    nexttime2
    splay tbj_timer.mp3
    msg %tbj_chan 46,46 58 $+ $f_time(%k,n:ss) 46  0,0play tbj_timer.mp3
  }

  if ($did == 65) {
    set %tbj_mode 1
    set %tbj_stor 2
    nexttime3
    splay tbj_timer.mp3
    msg %tbj_chan 46,46 58 $+ $f_time(%m,n:ss) 46  0,0play tbj_timer.mp3
  }

  if ($did == 42) {
    timer84 -p
    timer85 -p
    timer997 -p
    timer998 -p
    splay tbj_correct.wav
    splay tbj_bg1.mp3
    msg %tbj_chan 46,46 58 $+ $f_time(%k,n:ss) 46  0,0play tbj_correct.wav tbj_bg1.mp3
  }

  if ($did == 66) {
    nexttime2
    set %tbj_mode 1
    splay tbj_incorrect.wav
    msg %tbj_chan 40,40 52 $+ $f_time(%k,n:ss) 40  0,0play tbj_incorrect.wav
  }

  if ($did == 67) {
    timer84 -p
    timer85 -p
    timer997 -p
    timer998 -p
    splay tbj_correct.wav
    splay tbj_bg1.mp3
    msg %tbj_chan 46,46 58 $+ $f_time(%m,n:ss) 46  0,0play tbj_correct.wav tbj_bg1.mp3
  }

  if ($did == 43) {
    nexttime3
    set %tbj_mode 1
    splay tbj_incorrect.wav
    msg %tbj_chan 40,40 52 $+ $f_time(%m,n:ss) 40  0,0play tbj_incorrect.wav
  }

  if ($did == 61) {
    msg %tbj_chan 95,88( $wordline(98,88,17,$did(9),1) $+ 95)98,98__95,88( $wordline(98,88,17,$did(10),3) 95)
    msg %tbj_chan 95,88( $wordline(98,88,11,Раунд 1,1) $+ 46,46 58 $+ $wordline(58,46,5,$did(57) Р,2) 98,98__46,46 58 $+ $wordline(58,46,5,$did(59) Р,2) 95,88 $wordline(98,88,11,Раунд 1,3) 95)
    msg %tbj_chan 95,88( $wordline(98,88,11,Раунд 2,1) $+ 46,46 58 $+ $wordline(58,46,5,$did(58) Р,2) 98,98__46,46 58 $+ $wordline(58,46,5,$did(60) Р,2) 95,88 $wordline(98,88,11,Раунд 2,3) 95)
    msg %tbj_chan 95,88( $wordline(98,88,11,Итого,1) $+ 46,46 58 $+ $wordline(58,46,5,$calc($did(57) + $did(58)) Р,2) 98,98__46,46 58 $+ $wordline(58,46,5,$calc($did(59) + $did(60)) Р,2) 95,88 $wordline(98,88,11,Итого,3) 95)
  }

}

on *:TEXT:*:%tbj_chan: {
  if ($dialog(tbj) != $null) {
    if (%tbj_mode == 1) && ($strip($1-) == й) || ($strip($1-) == q) {
      set %tbj_sus123 $nick
      set %tbj_answer
      if (($nick == $did(tbj,9))) %tbj_answer = $nick
      if (($nick == $did(tbj,10))) %tbj_answer = $nick
      if (($nick == $did(tbj,11))) %tbj_answer = $nick
      if (($nick == $did(tbj,12))) %tbj_answer = $nick
      if (%tbj_answer != $null) && (%tbj_sus123 != %tbj_ignore) {
        timer991 off
        timer992 off
        timer993 off
        timer994 off
        timer995 off
        timer996 off
        set %tbj_mode 0
        msg %tbj_chan 54,46( $+ $wordline(54,46,22,$nick,2) $+ 54,46) 00,00play tbj_buzzer.wav
        splay tbj_buzzer.wav 
      }
    }
  }
}

alias timergame {
  if (%tbj_round == 1) {
    set %j 75
    set %p 0
    set %v 1000
    set %b 1000
    timer997 75 1 minus2
    timer998 75 1 didushka2
  }
  elseif (%tbj_round == 2) {
    set %j 90
    set %p 0
    set %v 1000
    set %b 1000
    timer997 90 1 minus2
    timer998 90 1 didushka2
  }
  elseif (%tbj_round == 3) && (%tbj_stor == 1) {
    set %k 45
    set %p 0
    set %v 1000
    set %b 1000
    timer997 45 1 minus3
    timer998 45 1 didushka3
  }
  elseif (%tbj_round == 3) && (%tbj_stor == 2) {
    set %m 45
    set %p 0
    set %v 1000
    set %b 1000
    timer997 45 1 minus4
    timer998 45 1 didushka4
  }
}

alias minus2 {
  set %j $puttok(%j, $calc(%j - 1), 1, 32)
  echo -a %j
  if (%j == 0) {
    timer3 off
    timer4 off
    timer5 off
    timer6 off
    splay tbj_outoftime.mp3
    msg %tbj_chan 46,46 530:0040  0,0play tbj_outoftime.mp3
  }
}

alias minus3 {
  set %k $puttok(%k, $calc(%k - 1), 1, 32)
  echo -a %k
  if (%k == 0) {
    timer3 off
    timer4 off
    timer5 off
    timer6 off
    splay tbj_outoftime.mp3
    msg %tbj_chan 46,46 530:0040  0,0play tbj_outoftime.mp3
  }
}

alias minus4 {
  set %m $puttok(%m, $calc(%m - 1), 1, 32)
  echo -a %m
  if (%m == 0) {
    timer3 off
    timer4 off
    timer5 off
    timer6 off
    splay tbj_outoftime.mp3
    msg %tbj_chan 46,46 530:0040  0,0play tbj_outoftime.mp3
  }
}

alias didushka2 {
  did -ra tbj 31 $f_time(%j,n:ss)
}

alias didushka3 {
  did -ra tbj 40 $f_time(%k,n:ss)
}

alias didushka4 {
  did -ra tbj 41 $f_time(%m,n:ss)
}

alias nexttime {
  timer997 %j 1 minus2
  timer998 %j 1 didushka2
}

alias nexttime2 {
  timer997 %k 1 minus3
  timer998 %k 1 didushka3
}

alias nexttime3 {
  timer997 %m 1 minus4
  timer998 %m 1 didushka4
}
