INCLUDE Irvine32.inc

;choice   DWORD 0                                                      ; To store what option customer choose...

.DATA
bill     DWORD 0                                                      ; To store the bill...
oPrice   DWORD 169, 149, 99, 89, 69, 69, 10, 5                        ; To store the prices of Oriental...
cPrice   DWORD 169, 149, 99, 79                                       ; To store the prices of Chiness...
fPrice   DWORD 149, 99, 79, 49                                        ; To store the prices of Fast Food...
dePrice  DWORD 799, 699, 99, 69                                       ; To store the prices of Dessert...
drPrice  DWORD 99, 99, 49 ,49, 69, 64, 89, 49                         ; To store the prices of Drinks...

welcome  BYTE " *** Welcome To Restaurant Transylvania *** ", 0       ; Welcome note...
                 
options  BYTE " Enter 1 : To see our Menue and Prices.", 0ah, 0dh
         BYTE " Enter 2 : To see our Deals and Offers.", 0ah, 0dh
		 BYTE " Enter 3 : To place an Order.", 0ah, 0dh
		 BYTE " Enter 4 : To Exit.", 0ah, 0dh , 0

pMenue   BYTE " Restaurant Transylvania proudly present our Menue ... ", 0ah, 0dh, 0ah, 0dh
         BYTE " *** Oriental *** ", 0ah, 0dh
         BYTE "                Chicken Quorma   : 169 per Dish. ", 0ah, 0dh 
         BYTE "		Pullao           : 149 per Dish. ", 0ah, 0dh
		 BYTE "		Chicken Briyani  :  99 per Dish. ", 0ah, 0dh
         BYTE "		Chicken Karahi   :  89 per Dish. ", 0ah, 0dh
         BYTE "		Chicken Tikka    :  69 per Dish. ", 0ah, 0dh
         BYTE "		Murgh Haleem     :  69 per Dish. ", 0ah, 0dh
		 BYTE "		Naan             :  10 per Piece. ", 0ah, 0dh
         BYTE "		Roti             :  05 per Piece. ", 0ah, 0dh, 0ah, 0dh
		 Byte " *** Chinese *** ", 0ah, 0dh
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
		 BYTE "		Tea             : 49 per Cup. ", 0ah, 0dh, 0

menue    BYTE " Enter 1 : For Oriental.", 0ah, 0dh
         BYTE " Enter 2 : For Chinese.", 0ah, 0dh
		 BYTE " Enter 3 : For Fast Food.", 0ah, 0dh
		 BYTE " Enter 4 : For Desert.", 0ah, 0dh
		 BYTE " Enter 5 : For Drinks.", 0ah, 0dh
		 BYTE " Enter 6 : To Exit.", 0ah, 0dh , 0

oriental BYTE " *** Oriental *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Quorma   : 169 per Dish. ", 0ah, 0dh
         BYTE " Enter 2 : Pullao           : 149 per Dish. ", 0ah, 0dh
		 BYTE " Enter 3 : Chicken Briyani  :  99 per Dish. ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Karahi   :  89 per Dish. ", 0ah, 0dh
         BYTE " Enter 5 : Chicken Tikka    :  69 per Dish. ", 0ah, 0dh
         BYTE " Enter 6 : Murgh Haleem     :  69 per Dish. ", 0ah, 0dh
		 BYTE " Enter 7 : Naan             :  10 per Piece. ", 0ah, 0dh
         BYTE " Enter 8 : Roti             :  05 per Piece. ", 0ah, 0dh
		 BYTE " Enter 9 : To Exit. ", 0ah, 0dh , 0

chinese  Byte " *** Chinese *** ", 0ah, 0dh
         BYTE " Enter 2 : Chicken Manchurian with rice : 169 per Plate ", 0ah, 0dh
         BYTE " Enter 1 : Egg Fried Rice               : 149 per Plate ", 0ah, 0dh
         BYTE " Enter 3 : Chicken Macroni              :  99 per Plate ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Shahlik              :  79 per Plate ", 0ah, 0dh
		 BYTE " Enter 6 : To Exit. ", 0ah, 0dh , 0

fastFood BYTE " *** Fast Food *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Pizza    : 149 per Pizza. ", 0ah, 0dh
         BYTE " Enter 2 : Zinger Burger    :  99 per Piece. ", 0ah, 0dh
         BYTE " Enter 3 : Chicken Shawarma :  79 per Piece. ", 0ah, 0dh
         BYTE " Enter 4 : French Fries     :  49 per Packet. ", 0ah, 0dh
		 BYTE " Enter 5 : To Exit. ", 0ah, 0dh , 0

dessert  BYTE " *** Dessert *** ", 0ah, 0dh
         BYTE " Enter 1 : Pineapple Cake    : 799 per Pound. ", 0ah, 0dh
         BYTE " Enter 2 : Choclate Cake     : 699 per Pound. ", 0ah, 0dh
         BYTE " Enter 3 : Custard           :  99 per Bowl. ", 0ah, 0dh
         BYTE " Enter 4 : Ice-cream         :  69 per Cup. ", 0ah, 0dh
		 BYTE " Enter 5 : To Exit. ", 0ah, 0dh , 0

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

deals    BYTE " *** Deals and Offers *** ", 0ah, 0dh

.CODE
main PROC

     mov edx , OFFSET dessert
	 call writeString

main ENDP
END main