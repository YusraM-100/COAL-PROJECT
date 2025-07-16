
; use QWEADZXC keys (omnidirectional) to rotate the player. use spacebar to shoot. and use your brain to code. good luck.

include Irvine32.inc
include macros.inc
includelib Winmm.lib
PlaySound PROTO , pszSound:PTR BYTE, hmod:DWORD, fdwSound:DWORD
.data
    
    mainTrack db "C:\Users\yusra\OneDrive\Desktop\CS-G SEMESTER3\zumaGameOST.wav",0


     menu BYTE " _____________________________________________________________________________ ", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                __________________________________________                   |", 0
          BYTE "|               /                                          \                  |", 0
          BYTE "|              /                                            \                 |", 0
          BYTE "|             |                  ZUMA GAME                   |                |", 0
          BYTE "|             |                                              |                |", 0
          BYTE "|             |     / ---                          --- \     |                |", 0
          BYTE "|             |    /    |__----\..loading.. /----__|    \    |                |", 0
          BYTE "|             |___/            |___|   |___|             \___|                |", 0
          BYTE "|                                  |   |                                      |", 0
          BYTE "|                                  |___|                                      |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|_____________________________________________________________________________|", 0

   inst BYTE " _____________________________________________________________________________ ", 0
      BYTE "|                                                                             |", 0
      BYTE "|                          INSTRUCTIONS                                       |", 0
      BYTE "|                      -------------------                                    |", 0
      BYTE "|                                                                             |", 0
      BYTE "|   Use QWEADZXC keys (omnidirectional) to rotate the player.                 |", 0
      BYTE "|   Use SPACEBAR to shoot.                                                    |", 0
      BYTE "|   Use your brain to code.                                                   |", 0
      BYTE "|   Good luck!                                                                |", 0
      BYTE "|                                                                             |", 0
      BYTE "|   Press F for emergency exit.                                               |", 0
      BYTE "|   Press P for pausing.                                                      |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                    ---                                      |", 0
      BYTE "|                                   |   |                                     |", 0
      BYTE "|                                   |   |                                     |", 0
      BYTE "|                                   |   |                                     |", 0
      BYTE "|                                    ---                                      |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                                                             |", 0
      BYTE "|                                                                             |", 0
      BYTE "|_____________________________________________________________________________|", 0

    walls BYTE " _____________________________________________________________________________ ", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                    ---                                      |", 0
          BYTE "|                                   |   |                                     |", 0
          BYTE "|                                   |   |                                     |", 0
          BYTE "|                                   |   |                                     |", 0
          BYTE "|                                    ---                                      |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|_____________________________________________________________________________|", 0

   scoreSc  BYTE " ___________________________________________________________________________", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "| _______ _______ _______ _______ _______                                     |", 0
          BYTE "| (  ____ (  ____ (  ___  (  ____ (  ____|                                    |", 0
          BYTE "| | (    \| (    \| (   ) | (    )| (                                         |", 0
          BYTE "| | (_____| |     | |   | | (____)| (__                                       |", 0
          BYTE "| (_____  | |     | |   | |     __|  __)                                      |", 0
          BYTE "|       ) | |     | |   | | (\ (  | (                                         |", 0
          BYTE "| /\____) | (____/| (___) | ) \ \_| (____                                     |", 0
          BYTE "| \_______(_______(_______|/   \__(______|                                    |", 0
          BYTE "|                                                                             |", 0
          BYTE "|      ______  _______ _______ _______ ______                                 |", 0
          BYTE "|     (  ___ \(  ___  (  ___  (  ____ (  __  \                                |", 0
          BYTE "|     ( )  |  | (   ) | (   ) | (    )| (  \  )                               |", 0
          BYTE "|     | (__/ /| |   | | (___) | (____)| |   ) |                               |", 0
          BYTE "|     |  __ ( | |   | |  ___  |     __| |   | |                               |", 0
          BYTE "|     | (  \ \| |   | | (   ) | (\ (  | |   ) |                               |", 0
          BYTE "|     | )___) | (___) | )   ( | ) \ \_| (__/  )                               |", 0
          BYTE "|     |/ \___/(_______|/     \|/   \__(______/                                |",0
         BYTE  "|_____________________________________________________________________________|", 0




 exitSc BYTE " _____________________________________________________________________________ ", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|      ___ __ __ ____ ______ ____ ____   ____       ____  ____ ___ ___   ___  |", 0
          BYTE "|     /  _]  |  |    |      |    |    \ /    |     /    |/    |   |   | /  _] |", 0
          BYTE "|    /  [_|  |  ||  ||      ||  ||  _  |   __|    |   __|  o  | _   _ |/  [_  |", 0
          BYTE "|   |    _]_   _||  ||_|  |_||  ||  |  |  |  |    |  |  |     |  \_/  |    _] |", 0
          BYTE "|   |   [_|     ||  |  |  |  |  ||  |  |  |_ |    |  |_ |  _  |   |   |   [_  |", 0
          BYTE "|   |     |  |  ||  |  |  |  |  ||  |  |     |    |     |  |  |   |   |     | |", 0
          BYTE "|   |_____|__|__|____| |__| |____|__|__|___,_|    |___,_|__|__|___|___|_____| |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|                                                                             |", 0
          BYTE "|_____________________________________________________________________________|", 0


                                                                                                                           
                                                                                                                           

    PlayerName db 20 dup (?)

    HardX  db  20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39
           db  40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59
           db  60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79
           db  80,81,82,83,84,85,85,85,85,85,85,85,85,85,85,85,85,85,85,85
           db  85,85,85,85,85,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71
           db  70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51
           db  50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31
           db  30,29,28,27,26,25,24,23,22,21

    HardY db   6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
          db   6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
          db   6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
          db   6,6,6,6,6,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20 
          db   21,22,23,24,25,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26
          db   26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26
          db   26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26
          db   26,26,26,26,26,26,26,26,26,26

    color  dd  21 dup (1,4,4 ,1, 10,10,14) ,1 , 4
    numDisplay dd 0  ; number of balls currently at display when this reaches to 149 display exit screen
    CurrentDisplay dd 149 dup (?) ; saves color to the balls present at each hardx, hardy position and if there are no balls saves 0 there


    ballSnake  db 100 dup ('O')

    ; Player sprite
    player_right BYTE "   ", 0
                 BYTE " O-", 0
                 BYTE "   ", 0

    player_left BYTE "   ", 0
                BYTE "-O ", 0
                BYTE "   ", 0

    player_up BYTE " | ", 0
              BYTE " O ", 0
              BYTE "   ", 0

    player_down BYTE "   ", 0
                BYTE " O ", 0
                BYTE " | ", 0

    player_upright BYTE "  /", 0
                   BYTE " O ", 0
                   BYTE "   ", 0

    player_upleft BYTE "\  ", 0
                  BYTE " O ", 0
                  BYTE "   ", 0

    player_downright BYTE "   ", 0
                     BYTE " O ", 0
                     BYTE "  \", 0

    player_downleft BYTE "   ", 0
                    BYTE " O ", 0
                    BYTE "/  ", 0

    ; Player's starting position (center)
    xPos db 56      ; Column (X)
    yPos db 15      ; Row (Y)

    xDir sbyte 0
    yDir sbyte 0

    ; Default character (initial direction)
    inputChar db 0
    direction db "d"

    ; Colors for the emitter and player
    color_red db 4       ; Red
    color_green db 2     ; Green
    color_yellow db 14   ; Yellow (for fire symbol)

    current_color db 4   ; Default player color (red)

    emitter_color1 db 2  ; Green
    emitter_color2 db 4  ; Red

    fire_color dd 4     ; Fire symbol color (Yellow)

    ; Emitter properties
    emitter_symbol db "O"
    emitter_row db 0    ; Two rows above player (fixed row for emitter)
    emitter_col db 1    ; Starting column of the emitter

    ; Fire symbol properties (fired from player)

    fire_symbol db "O", 0
    fire_row db 0        ; Fire will be fired from the player's position
    fire_col db 0        ; Initial fire column will be set in the update logic
    ;fire_color db 0

    ; Interface variables
    score db 0          ; Player's score
    lives db 3          ; Player's lives
    levelInfo db 1
    
    fireVal dd 0
    ; Counter variables for loops
    counter1 db 0
    counter2 db 0

    fileHandle dd ?                    
    bytesWritten dd ?                 
    bytesRead dd ?   
    buffer db "Scores have been saved into the files and now are being displayed with player name ", 0
    pName db "Yusra Masood  Abd"
    readBuffer db 200 DUP(0)          
    
    fname db "ScoreFile.txt",0
    

.code

Instruct PROC

    call clrscr
   mov esi, offset inst


   mov dl , 0
   mov dh , 0
   call Gotoxy
  
   xor dx ,dx
   mov dl , 30
   mov dh , 3
   call Gotoxy
   mov eax , Magenta + ( black * 16 )
   call SetTextColor
  

   mWrite "Welcome to Zuma Game ",0 
   call crlf 

    mov eax , Cyan + ( black * 16 )
    call SetTextColor

    xor dx , dx

    mov dh , 4
    ;mov dl , 19 

    mov counter1, 50
    mov counter2, 80

     mov dl, 19
        inc dh
        call Gotoxy

    movzx ecx, counter1

    printc:
        mov counter1, cl
        movzx ecx, counter2
        printr:
            mov eax, [esi]
            call WriteChar
            
            inc esi
        loop printr
        
        dec counter1
        movzx ecx, counter1

        mov dl, 19
        inc dh
        call Gotoxy
    loop printc
    

   
    call WaitForKeyPress
    ; Display Score, Lives, and Level Information
    call clrscr
    
    
    mov eax, magenta + (black * 16)
    call SetTextColor

    ; Draw Wall Again
    mov dl, 19
    mov dh, 4
    call Gotoxy

    mov esi, offset inst

    mov counter1, 50
    mov counter2, 80
    movzx ecx, counter1
    printcolumn:
        mov counter1, cl
        movzx ecx, counter2
        printrow:
            mov eax, [esi]
            call WriteChar
            
            inc esi
        loop printrow
        
        dec counter1
        movzx ecx, counter1

        mov dl, 19
        inc dh
        call Gotoxy
    loop printcolumn

    ; Wait for User Input to Proceed
    call WaitForKeyPress

    ret



Instruct ENDP
FileDisplay PROC
           
        call clrscr
        mov dl ,50 
        mov dh , 18
        call GoToXY

    mov edx, OFFSET fname             
    call CreateOutputFile             
    mov fileHandle, eax               

    mov eax, fileHandle               
    mov edx, OFFSET buffer            
    mov ecx, SIZEOF buffer            
    call WriteToFile                  
    jc show_error                     
    mov bytesWritten, eax             


    mov eax, fileHandle               
    call CloseFile                    
    jc show_error                     


    mWrite "File created and text written successfully...", 0
         

    mov edx, OFFSET fname             
    call OpenInputFile                
    jc show_error                     
    mov fileHandle, eax               

    mov eax, fileHandle               
    mov edx, OFFSET readBuffer        
    mov ecx, LENGTHOF readBuffer      
    call ReadFromFile                 
    jc show_error                     
    mov bytesRead, eax                

    mov eax, fileHandle               
    call CloseFile                    
    jc show_error            
     mWrite "File read successfully", 0

    mov edx, OFFSET readBuffer        
    call WriteString

    mov edx, OFFSET fname             
    call OpenInputFile                
    jc show_error                     
    mov fileHandle, eax        

    mov eax, fileHandle               
    mov edx, OFFSET pName          
    mov ecx, SIZEOF pName            
    call WriteToFile                  
    jc show_error                     
    mov bytesWritten, eax             

    mov eax, fileHandle               
    call CloseFile                    
    jc show_error                     

    mWrite "New text written successfully...", 0

    call OpenInputFile                
    jc show_error                     
    mov fileHandle, eax               

    mov eax, fileHandle               
    mov edx, OFFSET readBuffer        
    mov ecx, LENGTHOF readBuffer      
    call ReadFromFile                 
    jc show_error                     
    mov bytesRead, eax                

    mov eax, fileHandle               
    call CloseFile                    
    jc show_error            
     mWrite "File read successfully", 0

    mov edx, OFFSET readBuffer        
    call WriteString
    jmp exitP
show_error:
    mWrite "Could not load a valid argument", 0

    exitP:
FileDisplay ENDP
FireBall PROC
    ; Fire a projectile from the player's current face direction

    mov dl, xPos      ; Fire column starts at the player's X position
    mov dh, yPos      ; Fire row starts at the player's Y position

    mov fire_col, dl  ; Save the fire column position
    mov fire_row, dh  ; Save the fire row position

    mov al, direction
    cmp al, "w"
    je fire_up

    cmp al, "x"
    je fire_down

    cmp al, "a"
    je fire_left

    cmp al, "d"
    je fire_right

    cmp al, "q"
    je fire_upleft

    cmp al, "e"
    je fire_upright

    cmp al, "z"
    je fire_downleft

    cmp al, "c"
    je fire_downright

    jmp end_fire

fire_up:
    mov fire_row, 14         ; Move fire position upwards
    mov fire_col, 57         ; Center fire position
    mov xDir, 0
    mov yDir, -1
    jmp fire_loop

fire_down:
    mov fire_row, 18         ; Move fire position downwards
    mov fire_col, 57         ; Center fire position
    mov xDir, 0
    mov yDir, 1
    jmp fire_loop

fire_left:
    mov fire_col, 55         ; Move fire position leftwards
    mov fire_row, 16         ; Center fire position
    mov xDir, -1
    mov yDir, 0
    jmp fire_loop

fire_right:
    mov fire_col, 59         ; Move fire position rightwards
    mov fire_row, 16         ; Center fire position
    mov xDir, 1
    mov yDir, 0
    jmp fire_loop

fire_upleft:
    mov fire_row, 14         ; Move fire position upwards
    mov fire_col, 55         ; Move fire position leftwards
    mov xDir, -1
    mov yDir, -1
    jmp fire_loop

fire_upright:
    mov fire_row, 14         ; Move fire position upwards
    mov fire_col, 59         ; Move fire position rightwards
    mov xDir, 1
    mov yDir, -1
    jmp fire_loop

fire_downleft:
    mov fire_row, 18         ; Move fire position downwards
    mov fire_col, 55         ; Move fire position leftwards
    mov xDir, -1
    mov yDir, 1
    jmp fire_loop

fire_downright:
    mov fire_row, 18         ; Move fire position downwards
    mov fire_col, 59         ; Move fire position rightwards
    mov xDir, 1
    mov yDir, 1
    jmp fire_loop

fire_loop:
    ; Initialise fire position
    mov dl, fire_col
    mov dh, fire_row
    call GoToXY

    ; Loop to move the fireball in the current direction
    L1:

        ; Ensure fire stays within the bounds of the emitter wall
        cmp dl, 20            ; Left wall boundary
        jle end_fire

        cmp dl, 96            ; Right wall boundary
        jge end_fire

        cmp dh, 5             ; Upper wall boundary
        jle end_fire

        cmp dh, 27            ; Lower wall boundary
        jge end_fire

        ; Print the fire symbol at the current position
        mov eax, fire_color    ; Set fire color
        call SetTextColor

        add dl, xDir
        add dh, yDir
       
        call checkCollision
        mov ebx , fireVal
        cmp ebx, 0            ; Check if fireVal is 0 (no collision)
        je print                  ; If no collision, print the fire
         mov ecx, esi              ; If collision, move collision index to ecx
        

        jmp ud                    ; Jump to update display

        print:
        ; mWrite "No collision", 0
         call Gotoxy
        mWrite "O"

        ; Continue moving fire in the current direction (recursive)
        mov eax, 50
        call Delay

        ; erase the fire before redrawing it
        call GoToXY
        mWrite " "

        jmp L1
    ud:
    mov eax, fire_color     ; Move fire color to eax for UpdateDisplay
     push edx
     mov dl , score
     add dx , 10
     mov score , dl
     pop edx
    call UpdateDisplay      ; Update the display after collision
    call DisplayAgain
    jmp end_fire            ; End the fire after collision

    end_fire:
        mov dx, 0
        call GoToXY

    ret
FireBall ENDP
ShiftBackPop PROC
    
    mov esi, ecx             ; Start from the current index (ecx)
    sub esi , 2 
    mov ecx,  149
    sub ecx , esi
    sub ecx , 2
ShiftLoop:
    mov eax, CurrentDisplay[esi + 2] ; Load the next element
    mov CurrentDisplay[esi], eax     ; Shift it back by 8 bytes
    inc esi                      ; Move to the next element
    loop ShiftLoop                   ; Repeat for all elements

    ret
ShiftBackPop ENDP

UpdateDisplay PROC
     push edx
     mov dl , score
     add dx , 10
     mov score , dl
     pop edx
    cmp ebx, eax         ; Compare fireball color (eax) with color at collision (ebx)
    je popBall           ; If they match, pop the ball
    jmp AddBall          ; Otherwise, add the ball
    
popBall:
     push edx
     mov dl , score
     add dx , 10
     mov score , dl
     pop edx
    cmp ecx, 4           ; Special pop condition for index 4
    je pop_two           
    cmp ecx, 10          ; Special pop condition for index 10
    je pop_two           
    jmp end_update       ; If no pop condition met, exit

pop_two:
    mov CurrentDisplay[ecx], 0  ; Clear first ball
    inc ecx
    mov CurrentDisplay[ecx], 0  ; Clear second ball
    inc ecx
    call ShiftBackPop           ; Shift remaining elements back
    sub numDisplay, 2           ; Decrease count of balls
    call DisplayAgain           ; Refresh the display
    jmp end_update              ; Exit

AddBall:
    ; Insert the new ball's color into the display
    mov CurrentDisplay[ecx], eax

    ; Shift existing elements right to make space
    mov esi, 149 * 4           ; Start from the last element
shift_right_loop:
    cmp esi, ecx               ; Stop if we've reached the insertion index
    jl insert_ball             

    mov edx, CurrentDisplay[esi - 4] ; Shift element
    mov CurrentDisplay[esi], edx    
    sub esi, 4                ; Move to the next element
    jmp shift_right_loop

insert_ball:
    mov CurrentDisplay[ecx], eax  ; Insert the new ball
    add numDisplay, 1             ; Increment count
    call DisplayAgain             ; Refresh the display
    jmp end_update

end_update:
    ret
UpdateDisplay ENDP


DisplayAgain PROC
    mov esi, offset CurrentDisplay ; Start at the beginning of the display array
    mov edi, 0                     ; Index for HardX and HardY
    mov ecx, numDisplay            ; Number of elements to display

display_loop:
    mov dl, HardX[edi]             ; Get X coordinate
    mov dh, HardY[edi]             ; Get Y coordinate
    mov eax, [esi]                 ; Get color of the current ball
    cmp eax, 0                     ; Skip if no ball to display
    je skip_display

    call SetTextColor              ; Set the text color
    call GoToXY                    ; Move to the position
    mWrite "O", 0                  ; Write the ball symbol

skip_display:
    add esi, 4                     ; Move to the next ball
    inc edi                        ; Increment index for HardX/HardY
    loop display_loop              ; Repeat for all balls

    ret
DisplayAgain ENDP


CheckCollision PROC
  
    mov esi, 0               ; Index for X array
    mov edi, 0               ; Index for Y array
    mov ecx, 149             ; Number of elements to check

check_loop:
    cmp dl, HardX[esi]       ; Compare fireball X with HardX
    jne next_index           ; If no match, skip to next index

    cmp dh, HardY[edi]       ; Compare fireball Y with HardY
    jne next_index           ; If no match, skip to next index

    mov ebx, CurrentDisplay[esi] ; Save corresponding display value
    mov fireVal, ebx         ; Save the result
    ; mWrite "Collision", 0
    jmp collision_found      ; Exit the loop on finding a collision

next_index:
    inc esi
    inc edi

    loop check_loop          ; Repeat until ecx == 0

 collision_found:
    ret

CheckCollision ENDP


ColorBall PROC
    
    mov ebx, offset color     ; Load color array address
    mov edx , numDisplay             ; Get current color index
    mov eax , color[edx*4]
    mov CurrentDisplay[edx] , eax
    call SetTextColor         ; Set the console text color to the loaded value

    inc edx                    ; Increment color index
    
    mov numDisplay , edx
    mov edx,0
    mov eax ,0 
    ret 
    ;xor edx ,edx
ColorBall ENDP

DrawColorBalls PROC
    xor ax, ax                ; Clear ax register
    xor edx , edx
     mov esi, offset HardX     ; Start of X coordinates
     mov edi, offset HardY     ; Start of Y coordinates
    mov ecx , 100
draw_loop:
    ;mov al, 'O'               ; Get ball character ('O')
    mov dl, [esi]             ; Load X coordinate
    mov dh, [edi]             ; Load Y coordinate
    call GoToXY               ; Move to the position (dl, dh)
      
    call ColorBall
 
    mWrite "O",0
     inc esi                   ; Move to the next X coordinate in the array
     inc edi  
      mov eax , 50
    call delay
    loop draw_loop            ; Loop through all balls

    ret
DrawColorBalls ENDP

 addOneBall PROC
    mov ebx, numDisplay          ; Load the current number of balls displayed
    cmp ebx, 149               ; Check if we've reached the maximum limit (149 balls)
    jae drawExitScreen
   ; jae exit_addOneBall          ; If yes, exit the procedure
    ;dec ebx
    ; Load X and Y coordinates for the new ball
    mov dl, HardX[ebx]           ; Load X coordinate
    mov dh, HardY[ebx]           ; Load Y coordinate
    call GoToXY                  ; Move to the position (dl, dh)
    mov eax , color [ebx*4]
    mov CurrentDisplay[ebx] , eax
    call SetTextColor          ; Assign a color to the ball and update display array
    mWrite "O", 0                ; Write the ball ('O') on the screen

    ; Increment the ball count
    inc ebx                      ; Increment the ball count
    mov numDisplay, ebx          ; Update the number of balls displayed

exit_addOneBall:
    ret
addOneBall ENDP


MoveBalls PROC
     mov esi, offset HardX     ; Start of X coordinates
     mov edi, offset HardY     ; Start of Y coordinates
      mov ecx , numDisplay
      mov ebx , numDisplay
      cmp ebx , 100
      je go
      moveLoop:
         call DrawColorBalls
          inc esi                    ; Move to the next X coordinate in the array
          inc edi                    ; Move to the next Y coordinate in the array
         Loop moveLoop

go:
MoveBalls ENDP
drawExitScreen PROC
 call clrscr
   mov esi, offset exitSc


   mov dl , 0
   mov dh , 0
   call Gotoxy
   mov eax , Yellow + ( black * 16 )
   call SetTextColor

   xor dx ,dx
   mov dl , 30
   mov dh , 3
   call Gotoxy
   mov eax , Magenta + ( black * 16 )
   call SetTextColor
  

  ; mWrite " YOU LOST ",0 
   call crlf 

     mov dl, 19
    mov dh, 2
    call Gotoxy
    mWrite <"Score: ">
    mov eax, Blue + (black * 16)
    call SetTextColor
    mov al, score
    call WriteDec

    mov dl, 90
    mov dh, 2
    call Gotoxy
    mWrite <"Lives: ">
    mov eax, Red + (black * 16)
    call SetTextColor
    mov al, lives
    
    dec al
    cmp al , 0
    je fexit
    mov lives , al
    call WriteDec
    
    mov eax , Cyan + ( black * 16 )
    call SetTextColor

    xor dx , dx

    mov dh , 4
    ;mov dl , 19 

    mov counter1, 50
    mov counter2, 80

     mov dl, 19
        inc dh
        call Gotoxy

    movzx ecx, counter1

    printe:
        mov counter1, cl
        movzx ecx, counter2
        printre:
            mov eax, [esi]
            call WriteChar
            
            inc esi
        loop printre
        
        dec counter1
        movzx ecx, counter1

        mov dl, 19
        inc dh
        call Gotoxy
    loop printe
     call WaitForKeyPress
fexit:
     call DrawScoreWall
     call FileDisplay
     call WaitForKeyPress
  Invoke ExitProcess,0
     ret
drawExitScreen ENDP

DrawScoreWall PROC
    call clrscr
   mov esi, offset scoreSc


   mov dl , 0
   mov dh , 0
   call Gotoxy
   mov eax , Yellow + ( black * 16 )
   call SetTextColor

   mWrite "Enter your name: ",0 

   mov edx , offset PlayerName
   mov ecx , 100
   call ReadString


   xor dx ,dx
   mov dl , 30
   mov dh , 3
   call Gotoxy
   mov eax , Magenta + ( black * 16 )
   call SetTextColor
  

   mWrite "Welcome to Zuma Game ",0 
   call crlf 

    mov eax , Cyan + ( black * 16 )
    call SetTextColor

    xor dx , dx

    mov dh , 4
    ;mov dl , 19 

    mov counter1, 50
    mov counter2, 80

     mov dl, 19
        inc dh
        call Gotoxy

    movzx ecx, counter1

    printc:
        mov counter1, cl
        movzx ecx, counter2
        printr:
            mov eax, [esi]
            call WriteChar
            
            inc esi
        loop printr
        
        dec counter1
        movzx ecx, counter1

        mov dl, 19
        inc dh
        call Gotoxy
    loop printc
    

   
    call WaitForKeyPress
    ; Display Score, Lives, and Level Information
    call clrscr
    mov dl, 19
    mov dh, 2
    call Gotoxy
    mWrite <"Score: ">
    mov eax, Blue + (black * 16)
    call SetTextColor
    mov al, score
    call WriteDec

    mov eax, White + (black * 16)
    call SetTextColor

    mov dl, 90
    mov dh, 2
    call Gotoxy
    mWrite <"Lives: ">
    mov eax, Red + (black * 16)
    call SetTextColor
    mov al, lives
    call WriteDec

    mov eax, white + (black * 16)
    call SetTextColor

    mov dl, 55
    mov dh, 2
    call Gotoxy
    mWrite "LEVEL " 
    mov al, levelInfo
    call WriteDec

    mov eax, gray + (black * 16)
    call SetTextColor

    ; Draw Wall Again
    mov dl, 19
    mov dh, 4
    call Gotoxy

    mov esi, offset walls

    mov counter1, 50
    mov counter2, 80
    movzx ecx, counter1
    printcolumn:
        mov counter1, cl
        movzx ecx, counter2
        printrow:
            mov eax, [esi]
            call WriteChar
            
            inc esi
        loop printrow
        
        dec counter1
        movzx ecx, counter1

        mov dl, 19
        inc dh
        call Gotoxy
    loop printcolumn

    ; Wait for User Input to Proceed
    call WaitForKeyPress

    ret
DrawScoreWall ENDP

DrawWall PROC
    call clrscr
   mov esi, offset menu


   mov dl , 0
   mov dh , 0
   call Gotoxy
   mov eax , Yellow + ( black * 16 )
   call SetTextColor

   mWrite "Enter your name: ",0 

   mov edx , offset PlayerName
   mov ecx , 100
   call ReadString

   xor dx ,dx
   mov dl , 30
   mov dh , 3
   call Gotoxy
   mov eax , Magenta + ( black * 16 )
   call SetTextColor
  

   mWrite "Welcome to Zuma Game ",0 
   call crlf 

    mov eax , Cyan + ( black * 16 )
    call SetTextColor

    xor dx , dx

    mov dh , 4
    ;mov dl , 19 

    mov counter1, 50
    mov counter2, 80

     mov dl, 19
        inc dh
        call Gotoxy

    movzx ecx, counter1

    printc:
        mov counter1, cl
        movzx ecx, counter2
        printr:
            mov eax, [esi]
            call WriteChar
            
            inc esi
        loop printr
        
        dec counter1
        movzx ecx, counter1

        mov dl, 19
        inc dh
        call Gotoxy
    loop printc
    call WaitForKeyPress
    call Instruct
   
    call WaitForKeyPress
    ; Display Score, Lives, and Level Information
    call clrscr
    mov dl, 19
    mov dh, 2
    call Gotoxy
    mWrite <"Score: ">
    mov eax, Blue + (black * 16)
    call SetTextColor
    mov al, score
    call WriteDec

    mov eax, White + (black * 16)
    call SetTextColor

    mov dl, 90
    mov dh, 2
    call Gotoxy
    mWrite <"Lives: ">
    mov eax, Red + (black * 16)
    call SetTextColor
    mov al, lives
    call WriteDec

    mov eax, white + (black * 16)
    call SetTextColor

    mov dl, 55
    mov dh, 2
    call Gotoxy
    mWrite "LEVEL " 
    mov al, levelInfo
    call WriteDec

    mov eax, gray + (black * 16)
    call SetTextColor

    ; Draw Wall Again
    mov dl, 19
    mov dh, 4
    call Gotoxy

    mov esi, offset walls

    mov counter1, 50
    mov counter2, 80
    movzx ecx, counter1
    printcolumn:
        mov counter1, cl
        movzx ecx, counter2
        printrow:
            mov eax, [esi]
            call WriteChar
            
            inc esi
        loop printrow
        
        dec counter1
        movzx ecx, counter1

        mov dl, 19
        inc dh
        call Gotoxy
    loop printcolumn

    ; Wait for User Input to Proceed
    call WaitForKeyPress

    ret
DrawWall ENDP

WaitForKeyPress PROC
    ; Display Message to Prompt User
    mov dl, 35
    mov dh, 1
    call Gotoxy
    mWrite <"Press ENTER or SPACE to continue...F to exit">

    ; Wait for Enter or Space
WaitLoop:
    call ReadChar          ; Read a single character
    cmp al, 0Dh            ; Check for ENTER key (ASCII 13)
    je Proceed
    cmp al, 20h            ; Check for SPACE key (ASCII 32)
    je Proceed
    jmp WaitLoop           ; Repeat until valid key is pressed

Proceed:
    ret
WaitForKeyPress ENDP
PrintPlayer PROC
      ; call DrawColorBalls
    mov eax, brown + (black * 16)
    call SetTextColor

    mov al, direction
    cmp al, "w"
    je print_up

    cmp al, "x"
    je print_down

    cmp al, "a"
    je print_left

    cmp al, "d"
    je print_right

    cmp al, "q"
    je print_upleft

    cmp al, "e"
    je print_upright

    cmp al, "z"
    je print_downleft

    cmp al, "c"
    je print_downright

    ret

    print_up:
        mov esi, offset player_up
        jmp print

    print_down:
        mov esi, offset player_down
        jmp print

    print_left:
        mov esi, offset player_left
        jmp print

    print_right:
        mov esi, offset player_right
        jmp print

    print_upleft:
        mov esi, offset player_upleft
        jmp print

    print_upright:
        mov esi, offset player_upright
        jmp print

    print_downleft:
        mov esi, offset player_downleft
        jmp print

    print_downright:
        mov esi, offset player_downright
        jmp print

    print:
    mov dl, xPos
    mov dh, yPos
    call GoToXY

    mov counter1, 3
	mov counter2, 4
	movzx ecx, counter1
	printcolumn:
		mov counter1, cl
		movzx ecx, counter2
		printrow:
			mov eax, [esi]
			call WriteChar
            
			inc esi
		loop printrow

		movzx ecx, counter1

		mov dl, xPos
		inc dh
		call Gotoxy
	loop printcolumn
    
ret
PrintPlayer ENDP

MovePlayer PROC
   pushad
    mov dx, 0
    call GoToXY

    checkInput:

    mov eax, 5
    call Delay

    ; Check for key press
    mov eax, 0
    call ReadKey
    mov inputChar, al

    cmp inputChar, VK_SPACE
    je shoot

    cmp inputChar, VK_ESCAPE
    je paused

    cmp inputChar, "w"
    je move

    cmp inputChar, "a"
    je move

    cmp inputChar, "x"
    je move

    cmp inputChar, "d"
    je move

    cmp inputChar, "q"
    je move

    cmp inputChar, "e"
    je move

    cmp inputChar, "z"
    je move

    cmp inputChar, "c"
    je move

     cmp inputChar , "p"
     je paused

    cmp inputChar , "f"
    je WaitForKeyPress


    ; if character is invalid, check for a new keypress
    jmp checkInput

    move:
        mov al, inputChar
        mov direction, al
        jmp chosen

    paused:
        call WaitForKeyPress
      
        
    shoot:
        call FireBall

    chosen:
       
        call PrintPlayer
       ; call addOneBall
     popad   
    ret
MovePlayer ENDP

InitialiseScreen PROC
   
    call DrawWall
  ;  call Instruct
    call PrintPlayer

    ret
InitialiseScreen ENDP

main PROC

    Invoke PlaySound , offset mainTrack , null , 1
    call Clrscr
    call InitialiseScreen

   

    call MovePlayer

    mov eax , 25
    call delay
        
    
         call MovePlayer
         call DrawColorBalls
   gameLoop:
         mov ecx , 4
         l1:
            call MovePlayer
            Loop l1

           mov ecx , 3
         l2:
         mov eax , 50
         call delay
        call addOneBall
        Loop l2
        Loop gameLoop
  go: 
    exit
main ENDP
END main

