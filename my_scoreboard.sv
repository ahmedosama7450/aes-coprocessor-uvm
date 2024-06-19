class my_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(my_scoreboard)

  my_sequence_item my_sequence_item_h;

  uvm_analysis_imp #(my_sequence_item, my_scoreboard) aimp;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);

    my_sequence_item_h = my_sequence_item::type_id::create("my_sequence_item_h");

    aimp = new("aimp", this);
  endfunction

  function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    // TODO
  endfunction

  function void write(my_sequence_item my_sequence_item_h);
    // TODO
  endfunction

endclass
