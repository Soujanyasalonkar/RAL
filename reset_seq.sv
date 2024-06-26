class reset_seq extends base_sequence;
   `uvm_object_utils (reset_seq)
   function new (string name = "reset_seq");
      super.new (name);
   endfunction

   virtual bus_if    vif;

   task body ();
      if (!uvm_config_db #(virtual bus_if) :: get (null, "uvm_test_top.*", "bus_if", vif))
         `uvm_fatal ("VIF", "No vif")

      `uvm_info ("RESET", "Running reset ...", UVM_MEDIUM);
      vif.presetn <= 0;
      @(posedge vif.clk) vif.presetn <= 1;
      @ (posedge vif.clk);
   endtask
endclass
