pragma circom 2.0.0;
template LogicGates () {

    // Input signals
    signal input a;
    signal input b;

    // Internal Signals
    signal x; 
    signal y; 

    // Output signal
    signal output q;

    // Component Creation
    component andGate = AND();
    component notGate = NOT();
    component orGate = OR();

    // Giving Inputs to our gates
    andGate.a <== a;
    andGate.b <== b;
    x <== andGate.out; 

    notGate.in <== b;
    y <== notGate.out;

    orGate.a <== x;
    orGate.b <== y;
    q <== orGate.out;
}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a * b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2 * in;
}


component main = LogicGates();