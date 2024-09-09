class Instr<bits<4> op, string desc> {
    bits<4> opcode = op;
    string name = desc;
}
multiclass RegInstr {
    def rr : I<0b1111,"rr">;
    def rm : I<0b0000,"rm">;
}

defm MyBackend_:RegInstr;