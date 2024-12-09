package vn.hoidanit.laptopshop.domain;

import java.util.Optional;
import java.io.Serializable;
import java.util.List;

public class ProductCriteriaDTO implements Serializable {
    private Optional<String> page;
    private Optional<List<String>> factory;
    private Optional<List<String>> target;
    private Optional<List<String>> price;
    private Optional<List<String>> sort;

    public ProductCriteriaDTO() {
    }

    public ProductCriteriaDTO(Optional<String> page, Optional<List<String>> factory, Optional<List<String>> target,
            Optional<List<String>> price, Optional<List<String>> sort) {
        this.page = page;
        this.factory = factory;
        this.target = target;
        this.price = price;
        this.sort = sort;
    }

    public Optional<String> getPage() {
        return page;
    }

    public void setPage(Optional<String> page) {
        this.page = page;
    }

    public Optional<List<String>> getFactory() {
        return factory;
    }

    public void setFactory(Optional<List<String>> factory) {
        this.factory = factory;
    }

    public Optional<List<String>> getTarget() {
        return target;
    }

    public void setTarget(Optional<List<String>> target) {
        this.target = target;
    }

    public Optional<List<String>> getPrice() {
        return price;
    }

    public void setPrice(Optional<List<String>> price) {
        this.price = price;
    }

    public Optional<List<String>> getSort() {
        return sort;
    }

    public void setSort(Optional<List<String>> sort) {
        this.sort = sort;
    }

}
