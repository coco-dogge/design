// A net models connectivity in a design.

// Scalar net
wire [3:0]Q;
wire [7:0]BCD;

// Scalar net with a declaration assignment.  This assignment is 
// equivalent to a separate continuous assignment to the net.
wire BCD = ;

// Unsigned vector 
wire [<msb>:<lsb>] <net_name>;

// Nets may be declared with many different types with different
// electrical characteristics:

// wire/tri          Basic connection w/ typical electrical behavior

// supply1/supply0   Tied to VCC/GND 

// tri1/tri0         Default to 1/0 if left undriven

// wor/trior         Multiple drivers resolved by OR

// wand/triand       Multiple drivers resolved by AND
