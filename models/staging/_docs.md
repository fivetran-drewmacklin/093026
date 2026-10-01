{% docs tpch_order_status %}

Order-level fulfillment status derived from the statuses of all lines belonging
to the order:

| Value | Meaning |
| --- | --- |
| `F` | Filled: every order line has been fulfilled. |
| `O` | Open: every order line remains open. |
| `P` | Partial: the order contains a mix of fulfilled and open lines. |

Use this field for order-level fulfillment reporting. Use `L_LINESTATUS` when
the analysis needs the status of an individual order line.

{% enddocs %}
