module BancoRegistro #(      		 //   #( Parametros
         parameter BIT_ADDR = 8,     //   BIT_ADDR Número de bit para la dirección
         parameter BIT_DATO = 4      //  BIT_DATO  Número de bit para el dato
         )
	(V_BT,V_SW,G_CLOCK_50,G_HEX0,G_HEX1);  //se definen variables de entrada y salida 
	
	input wire [9:0] V_SW;  //switch con los cuales se van a ingresar los datos 
	input wire [3:0] V_BT;  //pulsadores los cuales seran para reset y regwire
	input wire G_CLOCK_50;  //entrada de reloj para la FPGA  
	
    wire  [BIT_ADDR-1:0] addrRa;  //se selecciona la posicion del dato que queremos mostrar en display 1
    wire  [BIT_ADDR-1:0] addrRb;  //se selecciona la posicion del dato que queremos mostrar en display 1
    
	wire [BIT_DATO-1:0] datOutRa;  //lectura en display 1
    wire [BIT_DATO-1:0] datOutRb;  //lectura en display 2
    
	wire [BIT_ADDR-1:0] addrW;  //seleccion de la posicion donde se quiere guardar el dato 
    wire [BIT_DATO-1:0] datW;   
    
	wire RegWrite;   //se escribe el dato ingresado en el registro de memoria 
    
    wire rst;
    output wire [6:0]G_HEX0;
    output wire [6:0]G_HEX1;
    
    
//se asigna el nombre a cada señal
assign  rst=V_BT[0];

assign  addrRa=V_SW[1:0];

assign  addrRb=V_SW[3:2];

assign  addrW=V_SW[5:4];

assign  datW=V_SW[9:6];

assign  RegWrite=V_BT[1];

// La cantdiad de registros es igual a: 
localparam NREG = 2 ** BIT_ADDR;

//configiraciÃ³n del banco de registro 
reg [BIT_DATO-1: 0] breg [NREG-1:0];


assign  datOutRa = breg[addrRa];
assign  datOutRb = breg[addrRb];


always @(posedge G_CLOCK_50) begin
	if (RegWrite == 1)
     breg[addrW] <= datW;
  end

//instanciacion de displays  
BCDtoSSeg dp ( .BCD(datOutRa), .G_HEX(G_HEX0));
BCDtoSSeg dp1 ( .BCD(datOutRb), .G_HEX(G_HEX1));

endmodule




