Code formatting
###############

Enable CONFIG_BT=y in the prj.conf file.

The UUID is 6e400001-b5a3-f393-e0a9-e50e24dcca9e.

Call bt_enable() to start the stack.

Enable ``CONFIG_BT`` in the ``prj.conf`` file and call ``bt_enable()``.

Visit www.example.com and read version 1.2 of the guide.

.. code-block:: C++

   #ifdef CONFIG_BT
   bt_enable();

The stack is in the bt_ctlr.c file.

.. msc::
   hscale = "1.3";
   Module<<Application [label="nrf_cloud_connect() returns"];

Then call nrf_cloud_connect() again.
