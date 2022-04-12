dialog tbj {
  title "New Project"
  size -1 -1 640 430
  option pixels

  box "Group Box", 1, 0 0 640 50
  button "Начать игру", 2, 10 20 75 25
  button "Титры", 3, 90 20 45 25
  button "Фон", 4, 140 20 35 25
  button "Правила игры", 5, 180 20 85 25
  button "+m", 6, 270 20 45 25
  button "Перерыв (с / на)", 7, 320 20 95 25
  edit "", 8, 420 20 100 21

  box "Group Box", 9, 0 50 640 70
  edit "", 10, 10 70 100 21
  edit "", 11, 120 70 100 21
  edit "", 12, 230 70 100 21
  edit "", 13, 340 70 100 21
  edit "", 14, 10 90 100 21
  edit "", 15, 120 90 100 21
  edit "", 16, 230 90 100 21
  edit "", 17, 340 90 100 21
  button "Пригласить всех", 18, 450 60 105 15
  button "Статистика", 19, 450 80 105 15
  button "Убрать игрока", 20, 450 100 105 15
  button "Покинул", 21, 560 60 75 55

  box "Group Box", 22, 0 120 640 90
  button ">", 23, 10 140 15 25
  edit "0", 24, 30 140 20 21
  button "Начать раунд", 25, 50 140 85 25
  button "MD5", 26, 140 140 35 25
  button "Показать строчку", 27, 180 140 105 25
  edit "", 28, 290 140 30 21, center
  button "Время", 29, 320 140 45 25
  button "V", 30, 370 140 25 25
  button "X", 31, 400 140 25 25
  button "Ячейки", 32, 430 140 55 25
  edit "", 33, 490 140 30 21, center
  button "Открыть ячейку", 34, 520 140 105 25
  button "Зачислить", 35, 10 170 295 25
  button "Отобрать", 36, 310 170 165 25
  button "Украсть", 37, 480 170 145 25

  box "Group Box", 38, 0 210 640 220
  text "Результаты 1 раунда", 39, 10 240 120 16, center
  text "Результаты 2 раунда", 40, 10 260 120 16, center
  text "Общая сумма", 41, 10 280 120 16, center
  edit "", 42, 140 240 100 21, center
  edit "", 43, 300 240 100 21, center
  edit "", 44, 140 260 100 21, center
  edit "", 45, 300 260 100 21, center
  text "0.00", 46, 140 280 100 21, center
  text "0.00", 47, 300 280 100 21, center
  text "Инд. таймер", 48, 10 300 120 16, center
  edit "60", 49, 175 300 40 21, center
  edit "60", 50, 335 300 40 21, center
  button "Старт", 51, 150 330 75 25
  button "Старт", 52, 310 330 75 25
  button "V", 53, 150 360 25 25
  button "X", 54, 200 360 25 25
  button "V", 55, 310 360 25 25
  button "X", 56, 360 360 25 25
  button "Статистика", 57, 150 390 235 25
}

alias tbj {
  dialog -mots tbj tbj
  set %tbj_chan $did(tbj,8)
} 

alias -l tbj_logo {
  msg %tbj_chan ОГРАБЛЕНИЕ
}

on 1:dialog:tbj:edit:*: {
  if ($did == 8) set %tbj_chan $did(tbj,8)

  if (($did >= 10) && ($did <= 13)) set %tbj_players $did(tbj,10) $did(tbj,11) $did(tbj,12) $did(tbj,13)
  if (($did >= 14) && ($did <= 17)) set %tbj_money $did(tbj,14) $did(tbj,15) $did(tbj,16) $did(tbj,17)

  if ($did == 24) set %tbj_round $did(tbj,24)
}

on 1:dialog:tbj:sclick:*: {

  ;Начало игры
  if ($did == 2) {
    unset %tbj_*
    set %tbj_chan $did(tbj,8)
    set %tbj_players $did(tbj,10) $did(tbj,11) $did(tbj,12) $did(tbj,13)
    set %tbj_money $did(tbj,14) $did(tbj,15) $did(tbj,16) $did(tbj,17)
    set %tbj_round 0
    mode %tbj_chan +m
    splay tbj_intro.mp3
    msg %tbj_chan 0,0play tbj_intro.mp3
    timer 1 63 tbj_logo
  }

  ;Конец игры
  if ($did == 3) {
    splay tbj_closing.mp3
    msg %tbj_chan 0,0play tbj_closing.mp3
    timer 1 39 mode %tbj_chan -m
  }

  ;Воспроизведение фона
  if ($did == 4) {
    if ((%tbj_round >= 0) && (%tbj_round <= 3)) && (%tbj_time == 0) {
      splay tbj_bg3.mp3
      msg %tbj_chan 0,0play tbj_bg3.mp3
    }
    elseif ((%tbj_round >= 0) && (%tbj_round <= 3)) && (%tbj_time != 0) {
      splay tbj_bg1.mp3
      msg %tbj_chan 0,0play tbj_bg1.mp3
    }
  }

  ;Кнопка +/-m
  if ($did == 6) {
    mode %tbj_chan $did(tbj, 6).text
    if ($did(tbj, 6).text == +m) {
      did -ra tbj 6 -m
    }
    elseif ($did(tbj, 6).text == -m) {
      did -ra tbj 6 +m
    }
  }

  if ($did == 7) {
    splay tbj_comm.mp3
    msg %tbj_chan 0,0play tbj_comm.mp3
  }

  ;Приглашение игроков
  if ($did == 18) {
    splay tbj_players.mp3
    msg %tbj_chan 0,0play tbj_players.mp3
    mode %tbj_chan +vvvv $did(tbj,10) $did(tbj,11) $did(tbj,12) $did(tbj,13)
  }

  if ($did == 19) {
    if ($numtok(%tbj_players,32) == 4) {
      [19:30:05] <~Danilo> 54,34(.....98sashajackson.....54)54,34(.....98sashajackson.....54)54,34(.....98sashajackson.....54)54,34(.....98sashajackson.....54)
      [19:30:15] <~Danilo> 54,88| ..............4625 WMR 54|54,88| ..............4625 WMR 54|54,88| ..............4625 WMR 54|54,88| ..............4625 WMR 54|
    }
    elseif ($numtok(%tbj_players,32) == 3) {
      [19:30:05] <~Danilo> 54,34(.....98sashajackson.....54)54,34(.....98sashajackson.....54)54,34(.....98sashajackson.....54)
      [19:30:15] <~Danilo> 54,88| ..............4625 WMR 54|54,88| ..............4625 WMR 54|54,88| ..............4625 WMR 54|
    }
    elseif ($numtok(%tbj_players,32) == 2) {
      [19:30:05] <~Danilo> 54,34(.....98sashajackson.....54)54,34(.....98sashajackson.....54)
      [19:30:15] <~Danilo> 54,88| ..............4625 WMR 54|54,88| ..............4625 WMR 54|
    }
  }

  if ($did == 23) {
    inc %tbj_round
    did -ra tbj 24 %tbj_round
    set %tbj_boxes 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
  }

  if ($did == 25) {
    set %tbj_sd $?="Начинаем тай-брейк?"
    if (%tbj_sd == 1) {
      set %tbj_mode 3
      splay tbj_sudden_death.mp3
      msg %tbj_chan 0,0play tbj_sudden_death.mp3
      .timer -m 1 3500 splay tbj_bg_qualification.mp3
      .timer -m 1 3500 msg %tbj_chan 0,0play tbj_bg_qualification.mp3
    }
    elseif (%tbj_sd == 0) {
      if (%tbj_round == 1) || (%tbj_round == 2) {
        set %tbj_total_summ 1000
      }
      elseif (%tbj_round == 3) {
        set %tbj_total_summ $calc(1000 + $did(tbj,42) + $did(tbj,43) + $did(tbj,44) + $did(tbj,45))
      }
      if (%tbj_round == 1) {
        set %tbj_time 90
      }
      if (%tbj_round == 2) {
        set %tbj_time 120
      }     
      splay tbj_lets_play.mp3
      msg %tbj_chan 0,0play tbj_lets_play.mp3
    }
  }

  if ($did == 26) {
    set %tbj_fakes STEAL STEAL STEAL STEAL 0 0 0 0 BANKRUPT

    if (%tbj_round == 3) {
      set %tbj_total_summs $did(42) $did(43) $did(44) $did(45)
    }

    set %total 1000
    set %max_range 1000
    set %values
    if (%tbj_round == 1) || (%tbj_round == 2) {
      ; while ($numtok(%values, 32) != 16) {
      ; var %element $rand(1, %max_range)
      ; set %values %values %element
      ; set %max_range $calc(%max_range - %element)
    }
    elseif (%tbj_round == 3) {
      while ($numtok(%values, 32) != 12) {
        var %element $rand(1, %max_range)
        set %values %values %element
        set %max_range $calc(%max_range - %element)
      }
    }
  }

  if ($did == 29) {
    if ($did(tbj, 29).text == Время) {
      did -ra tbj 29 Cont
      splay tbj_timer.mp3
      msg %tbj_chan 12,2( $wordline(00,02,05,$f_time(%tbj_time),2) 12,2)0,0play tbj_timer.mp3
      timergame
    }
    elseif ($did(tbj, 6).text == Cont) {
      did -ra tbj 6 +m
    }
  }

  if ($did == 31) {
    if (%tbj_player == $null) {
      unset %tbj_ignore
      splay tbj_no_answer.wav
      msg %tbj_chan 0,0play tbj_no_answer.wav
    }
    if (%tbj_player != $null) && (%tbj_mode == 3) {
      splay tbj_incorrect.mp3
      msg %tbj_chan 0,0play tbj_incorrect.mp3
    }
  }

  if ($did == 32) {
    msg %tbj_chan 96,96....60|94,94.........................88,88|88,88 $+ $wordline(52,88,12,$f_num($f_money(%tbj_total_summ)) WMR,3) $+ 88|94,94............94,94.............60,96|96,96....
    msg %tbj_chan 96,96....60|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,1,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,2,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,3,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,4,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,5,32) $+ 88.94]94,94...60,96|96,96....
    msg %tbj_chan 96,96....60|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,6,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,7,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,8,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,9,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,10,32) $+ 88.94]94,94...60,96|96,96....
    msg %tbj_chan 96,96....60|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,11,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,12,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,13,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,14,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,15,32) $+ 88.94]94,94...60,96|96,96....
    msg %tbj_chan 96,96....60|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,16,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,17,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,18,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,19,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,20,32) $+ 88.94]94,94...60,96|96,96....
    msg %tbj_chan 96,96....60|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,21,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,22,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,23,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,24,32) $+ 88.94]94,94...36|94,94...94,88[88.98 $+ $gettok(%tbj_boxes,25,32) $+ 88.94]94,94...60,96|96,96....
  }

  if ($did == 34) {
    if ($gettok(%tbj_values, $did(33), 32) = STEAL) {
      splay tbj_steal.mp3
      msg %tbj_chan 54,34(98 $+ $wordline(98,34,3,$did(33),3)  96,9694[ $+ $wordline(88,96,12,STEAL,2) $+ 94] 0,0play tbj_steal.mp3
    }
    elseif ($gettok(%tbj_values, $did(33), 32) = 0) {
      splay tbj_empty.mp3
      msg %tbj_chan 54,34(98 $+ $wordline(98,34,3,$did(33),3)  96,9694[ $+ $wordline(88,96,12,0.00 WMR,2) $+ 94] 0,0play tbj_steal.mp3
    }
    elseif ($gettok(%tbj_values, $did(33), 32) = BANKRUPT) {
      splay tbj_empty.mp3
      msg %tbj_chan 54,34(98 $+ $wordline(98,34,3,$did(33),3)  96,9694[ $+ $wordline(88,96,12,BANKRUPT,2) $+ 94] 0,0play tbj_empty.mp3
    }
    else {
      splay tbj_money_box.mp3
      msg %tbj_chan 54,34(98 $+ $wordline(98,34,3,$did(33),3)  96,9694[ $+ $wordline(88,96,12,$f_money($gettok(%tbj_values,$did(33),32)) WMR,2) $+ 94] 0,0play tbj_money_box.mp3
    }
    set %tbj_boxes $puttok(%tbj_boxes, 88.., $did(33), 32)
  }

  if ($did == 57) {
    msg %tbj_chan 98,98...........94,88[...sashajackson...]98,98.94,88[...sashajackson...]
    msg %tbj_chan 94,88[ $wordline(94,88,7,Раунд 1,2) 94]54,34(98 $+ $wordline(98,34,18,$f_num($f_money($did(42))) WMR,2) $+ 54)98,98.54,34(98 $+ $wordline(98,34,18,$f_num($f_money($did(43))) WMR,2) $+ 54)
    msg %tbj_chan 94,88[ $wordline(94,88,7,Раунд 2,2) 94]54,34(98 $+ $wordline(98,34,18,$f_num($f_money($did(44))) WMR,2) $+ 54)98,98.54,34(98 $+ $wordline(98,34,18,$f_num($f_money($did(45))) WMR,2) $+ 54)
    msg %tbj_chan 94,88[ $wordline(94,88,7,Итого,2) 94]54,34(98 $+ $wordline(98,34,18,$f_num($f_money($calc($did(42) + $did(44)))) WMR,2) $+ 54)98,98.54,34(98 $+ $wordline(98,34,18,$f_num($f_money($calc($did(43) + $did(45)))) WMR,2) $+ 54)
    did -ra tbj 46 $calc($did(42) + $did(44))
    did -ra tbj 47 $calc($did(43) + $did(45))
  }

}

alias -l timergame {
  if (%tbj_round == 1) {
    set %j 90
    set %p 0
    set %v 1000
    set %b 1000
    timer1 90 1 minus2
    timer2 90 1 didushka2
  }
  elseif (%tbj_round == 2) {
    set %j 120
    set %p 0
    set %v 1000
    set %b 1000
    timer1 120 1 minus2
    timer2 120 1 didushka2
  }
}

alias -l minus2 {
  set %tbj_time $puttok(%tbj_time, $calc(%tbj_time - 1), 1, 32)
  if (%tbj_time == 90) || (%tbj_time == 120) {
    msg %tbj_chan 12,2( $wordline(00,02,05,$f_time(%tbj_time),2) 12,2)
  }
  elseif (%tbj_time == 0) {
    splay tbj_outoftime.mp3  
    msg %tbj_chan 12,2( $wordline(00,02,05,$f_time(%tbj_time),2) 12,2)00,99play tbj_outoftime.mp3
    timers off
  }
  if (%tbj_time == 10) {
    splay tbj_last10secs.mp3
    msg %tbj_chan 12,2( $wordline(00,02,05,$f_time(%tbj_time),2) 12,2)0,0play tbj_last10secs.mp3
  }
}

alias -l didushka2 {
  did -ra tbj 28 $f_time(%tbj_time,s)
}

alias -l f_time {
  ;алиас возвращает время в отформатированном виде. Принимает в аргументы как количество секунд, так и таймстамп в некорректном виде. Например,
  ;$f_time(999) > 16:39
  ;$f_time(999,H:nn:ss) > 0:16:39
  ;$f_time(1:1,n:ss) > 1:01
  var %time $strip($1)
  var %format n:ss
  if ($numtok(%time,58) == 3) %format = H:nn:ss
  if ($len($2) > 0) %format = $2
  var %time2 0
  var %i 1
  if ($numtok(%time,58) > 1) {
    while (%i <= $numtok(%time,58)) {
      %time2 = $calc(  60 ^ $calc($numtok(%time,58) - %i) * $gettok(%time,%i,58) + %time2  )
      inc %i
    }
  }
  else %time2 = %time
  if (%time2 > 0) {
    if ($pos(%format,H) > 0) return $duration(%time2,3)
    else return $asctime(%time2,%format)
  }
  else return 0
}

alias -l f_time2 {
  ;алиас возвращает время в отформатированном виде. Принимает в аргументы как количество секунд, так и таймстамп в некорректном виде. Например,
  ;$f_time(999) > 16:39
  ;$f_time(999,H:nn:ss) > 0:16:39
  ;$f_time(1:1,n:ss) > 1:01
  var %time $strip($1)
  var %format n:ss
  if ($numtok(%time,58) == 3) %format = H:nn:ss
  if ($len($2) > 0) %format = $2
  var %time2 0
  var %i 1
  if ($numtok(%time,58) > 1) {
    while (%i <= $numtok(%time,58)) {
      %time2 = $calc(  60 ^ $calc($numtok(%time,58) - %i) * $gettok(%time,%i,58) + %time2  )
      inc %i
    }
  }
  else %time2 = %time
  if (%time2 > 0) {
    if ($pos(%format,H) > 0) return $duration(%time2,3)
    else return $asctime(%time2,%format)
  }
  else return 0
}
