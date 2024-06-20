class my_sequence extends uvm_sequence;
  `uvm_object_utils(my_sequence)

  function new(string name = "my_sequence");
    super.new(name);
  endfunction

  task body();

    for (int i = 0; i < 5; i++) begin

      my_sequence_item my_sequence_item_h;
      my_sequence_item_h = my_sequence_item::type_id::create("my_sequence_item_h");

      start_item(my_sequence_item_h);

      if (!my_sequence_item_h.randomize()) `uvm_fatal(get_full_name(), "randomize failed")

      finish_item(my_sequence_item_h);
      
    end

  endtask

endclass
