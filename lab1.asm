	    INCLUDE <p18f452.inc>
	    LIST    p=18f452

	    
	    UDATA_ACS   0x30
MapName	    RES		1
MapName1    RES		1
MapName2    RES		1
MapName3    RES		1
MapName4    RES	        1
MapName5    RES		1	    
MapName6    RES		1
MapName7    RES		1

retVal	    RES		1
    
	    EXTERN  MapIndex
	    CODE
	    
getMapChar
	    movlb   0x04
	    call    initString
	    movlw   0x07
	    cpfsgt  MapIndex, 1
	    goto    returnChar
	    goto    returnFF
returnFF
	    movlw   0xFF
	    movwf   retVal, 0
	    goto    exitRoutine
returnChar
	    movf    MapIndex,0,1
	    addlw   MapName
	    movwf   FSR0L, 0
	    clrf    FSR0H, 0
	    movf    INDF0, 0, 0
	    movwf   retVal, 0
	    goto    exitRoutine
exitRoutine
	    return
	    
initString
	    movlw   'T'
	    movwf   0x30, 0
	    movlw   'h'
	    movwf   0x31, 0
	    movlw   'e'
	    movwf   0x32, 0
	    movlw   't'
	    movwf   0x33, 0
	    movlw   'a'
	    movwf   0x34, 0
	    movlw   '_'
	    movwf   0x35, 0
	    movlw   'M'
	    movwf   0x36, 0
	    movlw   '\0'
	    movwf   0x37, 0
	    ;movlw   0x6
	    ;movwf   MapIndex
	    return
	    
	    GLOBAL  getMapChar
	    GLOBAL  MapName
	    GLOBAL  retVal
	    
	    END
