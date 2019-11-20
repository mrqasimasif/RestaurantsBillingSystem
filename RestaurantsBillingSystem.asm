INCLUDE Irvine32.inc

.DATA
bill     DWORD 0                                                      ; To store the bill...
oPrice   DWORD 169, 149, 99, 89, 69, 69, 10, 5                        ; To store the prices of Oriental...
cPrice   DWORD 169, 149, 99, 79                                       ; To store the prices of Chiness...
fPrice   DWORD 149, 99, 79, 49                                        ; To store the prices of Fast Food...
dePrice  DWORD 799, 699, 99, 69                                       ; To store the prices of Dessert...
drPrice  DWORD 99, 99, 49 ,49, 69, 64, 89, 49                         ; To store the prices of Drinks...

welcome  BYTE " *** Welcome To Restaurant Transylvania *** ", 0       ; Welcome note...
                 
options  BYTE " Enter 1 : To see our Menu and Prices.", 0ah, 0dh
         BYTE " Enter 2 : To see our Deals and Offers.", 0ah, 0dh
<<<<<<< HEAD
		 BYTE " Enter 3 : To place an Order.", 0ah, 0dh
		 BYTE " Enter 4 : To Reset the bill [Cancel the order].", 0ah, 0dh
		 BYTE " Enter 5 : To Exit.", 0ah, 0dh , 0
		                                                               ; Price Menu...
pMenu    BYTE " Restaurant Transylvania proudly present our Menu ... ", 0ah, 0dh, 0ah, 0dh
         BYTE " *** Oriental *** ", 0ah, 0dh
         BYTE "                Chicken Quorma   : 169 per Dish. ", 0ah, 0dh
         BYTE "		Pullao           : 149 per Dish. ", 0ah, 0dh
	     BYTE "		Chicken Briyani  :  99 per Dish. ", 0ah, 0dh
         BYTE "		Chicken Karahi   :  89 per Dish. ", 0ah, 0dh
         BYTE "		Chicken Tikka    :  69 per Dish. ", 0ah, 0dh
         BYTE "		Murgh Haleem     :  69 per Dish. ", 0ah, 0dh
	     BYTE "		Naan             :  10 per Piece. ", 0ah, 0dh
         BYTE "		Roti             :  05 per Piece. ", 0ah, 0dh, 0ah, 0dh
		 BYTE " *** Chinese *** ", 0ah, 0dh
         BYTE "		Chicken Manchurian with rice : 169 per Plate ", 0ah, 0dh
         BYTE "		Egg Fried Rice               : 149 per Plate ", 0ah, 0dh
         BYTE "		Chicken Macroni              :  99 per Plate ", 0ah, 0dh
         BYTE "		Chicken Shahlik              :  79 per Plate ", 0ah, 0dh, 0ah, 0dh
         BYTE " *** Fast Food *** ", 0ah, 0dh
         BYTE "		Chicken Pizza    : 149 per Pizza. ", 0ah, 0dh
         BYTE "		Zinger Burger    :  99 per Piece. ", 0ah, 0dh
         BYTE "		Chicken Shawarma :  79 per Piece. ", 0ah, 0dh
         BYTE "		French Fries     :  49 per Packet. ", 0ah, 0dh,  0ah, 0dh
         BYTE " *** Dessert *** ", 0ah, 0dh
         BYTE "		Pineapple Cake    : 799 per Pound. ", 0ah, 0dh
         BYTE "		Choclate Cake     : 699 per Pound. ", 0ah, 0dh
         BYTE "		Custard           :  99 per Bowl. ", 0ah, 0dh
         BYTE "		Ice-cream         :  69 per Cup. ", 0ah, 0dh, 0ah, 0dh
         BYTE " *** Drinks *** ",  0ah, 0dh
         BYTE "		Coca Cola       : 99 (1.5) Liters. ", 0ah, 0dh
         BYTE "		Sprite          : 99 (1.5) Liters. ", 0ah, 0dh
         BYTE "		Coca Cola       : 49 Regular. ", 0ah, 0dh
         BYTE "		Sprite          : 49 Regular. ", 0ah, 0dh
         BYTE "		Pineapple Juice : 69 per Glass. ", 0ah, 0dh
         BYTE "		Mint Margarita  : 64 per Glass. ", 0ah, 0dh
		 BYTE "		Coffee          : 89 per Cup. ", 0ah, 0dh
		 BYTE "		Tea             : 49 per Cup. ", 0

deals    BYTE " *** Deals and Offers *** ", 0ah, 0dh, 0                       ; TODO.......

cMenu    BYTE " Enter 1 : For Oriental.", 0ah, 0dh                            ; Choice Menu...
         BYTE " Enter 2 : For Chinese.", 0ah, 0dh
		 BYTE " Enter 3 : For Fast Food.", 0ah, 0dh
		 BYTE " Enter 4 : For Desert.", 0ah, 0dh
		 BYTE " Enter 5 : For Drinks.", 0ah, 0dh
		 BYTE " Enter 6 : To Exit.", 0ah, 0dh, 0

oriental BYTE " *** Oriental *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Quorma   : 169 per Dish. ", 0ah, 0dh
         BYTE " Enter 2 : Pullao           : 149 per Dish. ", 0ah, 0dh
	     BYTE " Enter 3 : Chicken Briyani  :  99 per Dish. ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Karahi   :  89 per Dish. ", 0ah, 0dh
         BYTE " Enter 5 : Chicken Tikka    :  69 per Dish. ", 0ah, 0dh
         BYTE " Enter 6 : Murgh Haleem     :  69 per Dish. ", 0ah, 0dh
	     BYTE " Enter 7 : Naan             :  10 per Piece. ", 0ah, 0dh
         BYTE " Enter 8 : Roti             :  05 per Piece. ", 0ah, 0dh
		 BYTE " Enter 9 : To Exit. ", 0ah, 0dh, 0

chinese  Byte " *** Chinese *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Manchurian with rice : 169 per Plate ", 0ah, 0dh
         BYTE " Enter 2 : Egg Fried Rice               : 149 per Plate ", 0ah, 0dh
         BYTE " Enter 3 : Chicken Macroni              :  99 per Plate ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Shahlik              :  79 per Plate ", 0ah, 0dh
		 BYTE " Enter 5 : To Exit. ", 0ah, 0dh, 0

fastFood BYTE " *** Fast Food *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Pizza    : 149 per Pizza. ", 0ah, 0dh
         BYTE " Enter 2 : Zinger Burger    :  99 per Piece. ", 0ah, 0dh
         BYTE " Enter 3 : Chicken Shawarma :  79 per Piece. ", 0ah, 0dh
         BYTE " Enter 4 : French Fries     :  49 per Packet. ", 0ah, 0dh
		 BYTE " Enter 5 : To Exit. ", 0ah, 0dh, 0

dessert  BYTE " *** Dessert *** ", 0ah, 0dh
         BYTE " Enter 1 : Pineapple Cake    : 799 per Pound. ", 0ah, 0dh
         BYTE " Enter 2 : Choclate Cake     : 699 per Pound. ", 0ah, 0dh
         BYTE " Enter 3 : Custard           :  99 per Bowl. ", 0ah, 0dh
         BYTE " Enter 4 : Ice-cream         :  69 per Cup. ", 0ah, 0dh
		 BYTE " Enter 5 : To Exit. ", 0ah, 0dh, 0

drinks   BYTE " *** Drinks *** ", 0ah, 0dh
	     BYTE " Enter 1 : Coca Cola       : 99 (1.5) Liters. ", 0ah, 0dh
         BYTE " Enter 2 : Sprite          : 99 (1.5) Liters. ", 0ah, 0dh
         BYTE " Enter 3 : Coca Cola       : 49 Regular. ", 0ah, 0dh
         BYTE " Enter 4 : Sprite          : 49 Regular. ", 0ah, 0dh
         BYTE " Enter 5 : Pineapple Juice : 69 per Glass. ", 0ah, 0dh
         BYTE " Enter 6 : Mint Margarita  : 64 per Glass. ", 0ah, 0dh
	     BYTE " Enter 7 : Coffee          : 89 per Cup. ", 0ah, 0dh
	     BYTE " Enter 8 : Tea             : 49 per Cup. ", 0ah, 0dh
         BYTE " Enter 9 : To Exit. ", 0ah, 0dh , 0

reMsg   BYTE " Your Order has been Canceled... ", 0ah, 0dh, 0

caption BYTE "Error", 0

errMsg  BYTE " Please follow instructions correctly... ", 0

billMsg BYTE  "    Total Bill:   Rs ", 0

exitMsg BYTE "     We are always glad to serve our Customers... ", 0ah, 0dh, 0

haltMsg BYTE " Press Enter to continue... ", 0

.CODE
main PROC
     call crlf

	 mov edx, OFFSET welcome                                     ; Printing Welcome...
	 call writeString

	 call crlf
	 call crlf

	 op:                                                         ; Option Tag...
	    mov edx, OFFSET options                                  ; Printing options...
	    call writeString

		call crlf
		call readInt

	    cmp eax, 1
		je  pm
		cmp eax, 2
		je  do
		cmp eax, 3
		je  cm
		cmp eax, 4
		je  rb
		cmp eax, 5
		je  _exit

		call error                                                  ; calling error Proc...
		jmp  op

		pm:                                                         ; Price Menu Tag...
		   call printMenu  
		   jmp  op

        do:                                                          ; Deals and Offers Tag...
	       call dealsOffers
		   jmp op

        cm:                                                          ; Choice Menu Tag...
	       call choiceMenu
		   jmp op

        rb:                                                          ; Reset Bill Tag...
	       call resetBill
		   jmp op

	 _exit:                                                          ; Exit Tag
		   call printBill

	       exit

main ENDP

;-------------------------------------------------------------------
;| Print Menue with Prices for customers...                         |
;| Uses:   pMenu string to print...                                 |
;| Note: push then pop regs and flags in stack to make them const   |
;-------------------------------------------------------------------

printMenu PROC
           PUSHAD                                                    ; Pushing all 32-bit registers...
		   PUSHFD                                                    ; Pushing all flags...

		   call crlf

		   mov edx, OFFSET pMenu
	       call writeString

		   call halt

		   POPFD                                                     ; Poping flags in revrse order...
		   POPFD                                                     ; Poping regs in revrse order...

		   ret
printMenu ENDP

;-------------------------------------------------------------------
;| Print Deals and Offers with Prices for customers...              |
;| Uses:   pMenu string to print...                                 |
;| update: bill according to selected Deals and Offers              |
;-------------------------------------------------------------------

dealsOffers PROC
             PUSHAD
		     PUSHFD

			 call crlf

		     mov edx, OFFSET deals
	         call writeString 

		     POPFD
		     POPFD

	    	 ret
dealsOffers ENDP

;-------------------------------------------------------------------
;| Print Deals and Offers with Prices for customers...              |
;| Uses:   pMenu string to print...                                 |
;| update: bill according to selected Deals and Offers...           |
;-------------------------------------------------------------------

choiceMenu PROC
             PUSHAD
		     PUSHFD

		     mov edx, OFFSET cMenu
	         call writeString 

		     POPFD
		     POPFD

	    	 ret
choiceMenu ENDP

;-------------------------------------------------------------------
;| Print a message for customers...                                 |
;| Uses:   pMenu string to print...                                 |
;| update: Reset the bill to 0...                                   |
;-------------------------------------------------------------------

resetBill PROC
           PUSHAD
		   PUSHFD

		   call crlf

		   mov edx, OFFSET reMsg
	       call writeString 

		   mov bill, 0                                                 ; Making bill 0...

		   call halt

		   POPFD
		   POPFD

	       ret
resetBill ENDP

;-------------------------------------------------------------------
;| Uses:   print the bill...                                        |
;-------------------------------------------------------------------

printBill PROC
           PUSHAD
		   PUSHFD

		   call crlf

		   mov edx, OFFSET billMsg
	       call writeString 

		   mov eax, bill
		   call writeInt

		  ; call halt
		   call crlf

		   mov edx, OFFSET exitMsg                                 ; Printing Exit Note/Msg...
	       call writeString

		   POPFD
		   POPFD

	       ret
printBill ENDP

;-------------------------------------------------------------------
;| Uses: As system pause...                                         |
;-------------------------------------------------------------------

halt PROC
      PUSHAD
	  PUSHFD

	  call crlf
	  call crlf

      mov edx, OFFSET haltMsg
	  call writeString
	  call readInt

	  POPFD
	  POPFD

	  ret
halt ENDP

;-------------------------------------------------------------------
;| Shows an Error Box to customers...                               |
;| Uses:  2 strings for an input   box...                           |
;| Advan: It also works as a pause...                               |
;-------------------------------------------------------------------

error PROC
       PUSHAD
	   PUSHFD

	   call crlf

       mov ebx,OFFSET caption
	   mov edx,OFFSET errMsg
	   call MsgBox

	   POPFD
	   POPFD

	   ret
error ENDP

END main
