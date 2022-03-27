;; UNCONTENDED

;;uncontended memory from 32768 to 49151
;; 16383 bytes total


;;new
SECTION code_user
; assign read-only executable code to this section
;----------------------------------



SECTION rodata_user
; assign read-only data to this section
;; Variables
;; define C variables here to force placement in memory
;;;
X_PositionBits: defb 128,64,32,16,8,4,2,1
;;;
;----------------------------------

SECTION smc_user
; assign self-modifying code to this section
;----------------------------------

SECTION data_user
; assign non-zero initial data to this section
;----------------------------------



SECTION bss_user
; assign zero initial data to this section
;----------------------------------


