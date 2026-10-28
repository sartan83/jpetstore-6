/*
 *    Copyright 2010-2026 the original author or authors.
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *       https://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
package org.mybatis.jpetstore.mapper;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.Comparator;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mybatis.jpetstore.domain.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

/**
 * The Class ProductMapperTest.
 */
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = MapperTestContext.class)
@Transactional
class ProductMapperTest {

  /** The mapper. */
  @Autowired
  private ProductMapper mapper;

  /**
   * Gets the product list by category.
   */
  @Test
  void getProductListByCategory() {
    // given
    String categoryId = "OUTERWEAR";

    // when
    List<Product> products = mapper.getProductListByCategory(categoryId);

    // then
    products.sort(Comparator.comparing(Product::getProductId));
    assertThat(products).hasSize(4);
    assertThat(products.get(0).getProductId()).isEqualTo("OW-DG-01");
    assertThat(products.get(0).getName()).isEqualTo("Down Gilet");
    assertThat(products.get(0).getCategoryId()).isEqualTo("OUTERWEAR");
    assertThat(products.get(0).getDescription())
        .isEqualTo("<image src=\"/jpetstore/images/gilet.svg\">Lightweight quilted down gilet");
    assertThat(products.get(1).getProductId()).isEqualTo("OW-DJ-02");
    assertThat(products.get(1).getName()).isEqualTo("Down Jacket");
    assertThat(products.get(1).getCategoryId()).isEqualTo("OUTERWEAR");
    assertThat(products.get(1).getDescription())
        .isEqualTo("<image src=\"/jpetstore/images/downjacket.svg\">Lacquered nylon down jacket with tonal quilting");
    assertThat(products.get(2).getProductId()).isEqualTo("OW-PK-01");
    assertThat(products.get(2).getName()).isEqualTo("Hooded Parka");
    assertThat(products.get(2).getCategoryId()).isEqualTo("OUTERWEAR");
    assertThat(products.get(2).getDescription())
        .isEqualTo("<image src=\"/jpetstore/images/parka.svg\">Long down parka with detachable hood");
    assertThat(products.get(3).getProductId()).isEqualTo("OW-RJ-02");
    assertThat(products.get(3).getName()).isEqualTo("Rain Jacket");
    assertThat(products.get(3).getCategoryId()).isEqualTo("OUTERWEAR");
    assertThat(products.get(3).getDescription())
        .isEqualTo("<image src=\"/jpetstore/images/rainjacket.svg\">Water-repellent hooded shell jacket");
  }

  /**
   * Gets the product.
   */
  @Test
  void getProduct() {
    // given
    String productId = "OW-DG-01";

    // when
    Product product = mapper.getProduct(productId);

    // then
    assertThat(product.getProductId()).isEqualTo("OW-DG-01");
    assertThat(product.getName()).isEqualTo("Down Gilet");
    assertThat(product.getCategoryId()).isEqualTo("OUTERWEAR");
    assertThat(product.getDescription())
        .isEqualTo("<image src=\"/jpetstore/images/gilet.svg\">Lightweight quilted down gilet");
  }

  /**
   * Search product list.
   */
  @Test
  void searchProductList() {
    // given
    String keywords = "%o%";

    // when
    List<Product> products = mapper.searchProductList(keywords);

    // then
    products.sort(Comparator.comparing(Product::getProductId));
    System.out.println(products);
    assertThat(products).hasSize(10);
    assertThat(products.get(0).getProductId()).isEqualTo("AC-BN-01");
    assertThat(products.get(0).getName()).isEqualTo("Wool Beanie");
    assertThat(products.get(0).getCategoryId()).isEqualTo("ACCESSORY");
    assertThat(products.get(0).getDescription())
        .isEqualTo("<image src=\"/jpetstore/images/beanie.svg\">Ribbed virgin wool beanie");
    assertThat(products.get(1).getName()).isEqualTo("Merino Turtleneck");
    assertThat(products.get(2).getName()).isEqualTo("Wool Cardigan");
    assertThat(products.get(3).getName()).isEqualTo("Tricolor Zip Sweater");
    assertThat(products.get(4).getName()).isEqualTo("Down Gilet");
    assertThat(products.get(5).getName()).isEqualTo("Down Jacket");
    assertThat(products.get(6).getName()).isEqualTo("Hooded Parka");
    assertThat(products.get(7).getName()).isEqualTo("Oxford Shirt");
    assertThat(products.get(8).getName()).isEqualTo("Polo Shirt");
    assertThat(products.get(9).getName()).isEqualTo("Cargo Trousers");
  }

}
