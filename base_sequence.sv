class base_sequence extends uvm_sequence#(seq_item);
  seq_item req;
  `uvm_object_utils(base_sequence)
  
  function new (string name = "base_sequence");
    super.new(name);
  endfunction

  task body();
    `uvm_info(get_type_name(), "Base seq: Inside Body", UVM_LOW);
    `uvm_do(req);
  endtask
endclass
