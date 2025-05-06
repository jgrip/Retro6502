

uart = $0800
uart_rxtx = uart + 0
uart_ier =	uart + 1
uart_isr =	uart + 2
uart_lcr =	uart + 3
uart_mcr =	uart + 4
uart_lsr =	uart + 5
uart_msr =	uart + 6
uart_sr =	uart + 7

uart_isr_msi = $08
uart_isr_rls = $04
uart_isr_thr = $02
uart_isr_rhr = $01



vdc = $0900
vdc_addr = vdc + 0
vdc_data = vdc + 1






.org $c000
reset_vector:
	sei
	... Do stuff ...
	Clear RAM
	Initialize I/O chips
	* UART
	* VDC
	

nmi_vector:
	rti
	
irq_vector:
	rti


.org $fffa
nmivec: .word nmi_vector
rstvec:	.word reset_vector
irqvec:	.word irq_vector
