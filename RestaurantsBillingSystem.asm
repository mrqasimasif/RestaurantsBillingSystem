INCLUDE Irvine32.inc

choice   DWORD 0                                                      ; To store what option customer choose...

.DATA
bill     DWORD 0                                                      ; To store the bill...
oPrice   DWORD 169, 149, 99, 89, 69, 69, 10, 5                        ; To store the prices of Oriental...
cPrice   DWORD 169, 149, 99, 79                                       ; To store the prices of Chiness...
fPrice   DWORD 149, 99, 79, 49                                        ; To store the prices of Fast Food...
dePrice  DWORD 799, 699, 99, 69                                       ; To store the prices of Dessert...
drPrice  DWORD 99, 99, 49 ,49, 69, 64, 89, 49                         ; To store the prices of Drinks...

welcome  BYTE " *** Welcome To Restaurant Transylvania *** ", 0ah, 0dh            ; Welcome note...
                 
options  BYTE " Enter 1 : To see our Menue and Prices.", 0ah, 0dh
         BYTE " Enter 2 : To see our Deals and Offers.", 0ah, 0dh
		 BYTE " Enter 3 : To place an Order.", 0ah, 0dh
		 BYTE " Enter 4 : To Exit.", 0ah, 0dh

pMenue   BYTE " Restaurant Transylvania proudly present our Menue ... ", 0ah, 0dh, 0ah, 0dh
         BYTE " *** Oriental *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Quorma   : 169 per Dish. ", 0ah, 0dh
         BYTE " Enter 2 : Pullao           : 149 per Dish. ", 0ah, 0dh
		 BYTE " Enter 3 : Chicken Briyani  :  99 per Dish. ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Karahi   :  89 per Dish. ", 0ah, 0dh
         BYTE " Enter 5 : Chicken Tikka    :  69 per Dish. ", 0ah, 0dh
         BYTE " Enter 6 : Murgh Haleem     :  69 per Dish. ", 0ah, 0dh
		 BYTE " Enter 7 : Naan             :  10 per Piece. ", 0ah, 0dh
         BYTE " Enter 8 : Roti             :  05 per Piece. ", 0ah, 0dh
		 Byte " *** Chiness *** ", 0ah, 0dh
         BYTE " Enter 2 : Chicken Manchurian with rice : 169 per Plate ", 0ah, 0dh
         BYTE " Enter 1 : Egg Fried Rice               : 149 per Plate ", 0ah, 0dh
         BYTE " Enter 3 : Chicken Macroni              :  99 per Plate ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Shahlik              :  79 per Plate ", 0ah, 0dh

menue    BYTE " Enter 1 : For Oriental.", 0ah, 0dh
         BYTE " Enter 2 : For Chinese.", 0ah, 0dh
		 BYTE " Enter 3 : For Fast Food.", 0ah, 0dh
		 BYTE " Enter 4 : For Desert.", 0ah, 0dh
		 BYTE " Enter 5 : For Drinks.", 0ah, 0dh
		 BYTE " Enter 6 : To Exit.", 0ah, 0dh

oriental BYTE " *** Oriental *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Quorma   : 169 per Dish. ", 0ah, 0dh
         BYTE " Enter 2 : Pullao           : 149 per Dish. ", 0ah, 0dh
		 BYTE " Enter 3 : Chicken Briyani  :  99 per Dish. ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Karahi   :  89 per Dish. ", 0ah, 0dh
         BYTE " Enter 5 : Chicken Tikka    :  69 per Dish. ", 0ah, 0dh
         BYTE " Enter 6 : Murgh Haleem     :  69 per Dish. ", 0ah, 0dh
		 BYTE " Enter 7 : Naan             :  10 per Piece. ", 0ah, 0dh
         BYTE " Enter 8 : Roti             :  05 per Piece. ", 0ah, 0dh
		 BYTE " Enter 9 : To Exit. ", 0ah, 0dh

chiness  Byte " *** Chiness *** ", 0ah, 0dh
         BYTE " Enter 2 : Chicken Manchurian with rice : 169 per Plate ", 0ah, 0dh
         BYTE " Enter 1 : Egg Fried Rice               : 149 per Plate ", 0ah, 0dh
         BYTE " Enter 3 : Chicken Macroni              :  99 per Plate ", 0ah, 0dh
         BYTE " Enter 4 : Chicken Shahlik              :  79 per Plate ", 0ah, 0dh
		 BYTE " Enter 6 : To Exit. ",  0ah, 0dh

fastFood BYTE " *** Fast Food *** ", 0ah, 0dh
         BYTE " Enter 1 : Chicken Pizza    : 149 per Pizza. ", 0ah, 0dh
         BYTE " Enter 2 : Zinger Burger    :  99 per Piece. ", 0ah, 0dh
         BYTE " Enter 3 : Chicken Shawarma :  79 per Piece. ", 0ah, 0dh
         BYTE " Enter 4 : French Fries     :  49 per Packet. ", 0ah, 0dh
		 BYTE " Enter 5 : To Exit. ", 0ah, 0dh

dessert  BYTE " *** Dessert *** ", 0ah, 0dh
         BYTE " Enter 1 : Pineapple Cake    : 799 per Pound. ", 0ah, 0dh
         BYTE " Enter 2 : Choclate Cake     : 699 per Pound. ", 0ah, 0dh
         BYTE " Enter 3 : Custard           :  99 per Bowl. ", 0ah, 0dh
         BYTE " Enter 4 : Ice-cream         :  69 per Cup. ", 0ah, 0dh
		 BYTE " Enter 5 : To Exit. ", 0ah, 0dh

drinks   BYTE " *** Drinks *** ",  0ah, 0dh
		 BYTE " Enter 1 : Coca Cola       : 99 (1.5) Liters. ", 0ah, 0dh
         BYTE " Enter 2 : Sprite          : 99 (1.5) Liters. ", 0ah, 0dh
         BYTE " Enter 3 : Coca Cola       : 49 Regular. ", 0ah, 0dh
         BYTE " Enter 4 : Sprite          : 49 Regular. ", 0ah, 0dh
         BYTE " Enter 5 : Pineapple Juice : 69 per Glass. ", 0ah, 0dh
         BYTE " Enter 6 : Mint Margarita  : 64 per Glass. ", 0ah, 0dh
		 BYTE " Enter 7 : Coffee          : 89 per Cup. ", 0ah, 0dh
		 BYTE " Enter 8 : Tea             : 49 per Cup. ", 0ah, 0dh
         BYTE " Enter 9 : To Exit. ",  0ah, 0dh

deals    BYTE " *** Deals and Offers *** ", 0ah, 0dh

.CODE
main PROC

main ENDP
END main