package org.csu.jpetstore.persistence;

import org.csu.jpetstore.domain.LineItem;

import java.util.List;

public interface LineItemDAO {
    List<LineItem> getLineItemsByOrderId(int orderId);

    void insertLineItem(LineItem lineItem);
}
