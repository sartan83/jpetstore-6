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
import org.mybatis.jpetstore.domain.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

/**
 * The Class CategoryMapperTest.
 */
@ExtendWith(SpringExtension.class)
@ContextConfiguration(classes = MapperTestContext.class)
@Transactional
class CategoryMapperTest {

  /** The mapper. */
  @Autowired
  private CategoryMapper mapper;

  /**
   * Gets the category list.
   */
  @Test
  void getCategoryList() {
    // given

    // when
    List<Category> categories = mapper.getCategoryList();

    // then
    categories.sort(Comparator.comparing(Category::getCategoryId));
    assertThat(categories).hasSize(5);
    assertThat(categories.get(0).getCategoryId()).isEqualTo("ACCESSORY");
    assertThat(categories.get(0).getName()).isEqualTo("Accessories");
    assertThat(categories.get(0).getDescription()).isEqualTo("Beanies and scarves");
    assertThat(categories.get(1).getCategoryId()).isEqualTo("KNITWEAR");
    assertThat(categories.get(1).getName()).isEqualTo("Knitwear");
    assertThat(categories.get(1).getDescription()).isEqualTo("Cashmere, merino and virgin wool knits");
    assertThat(categories.get(2).getCategoryId()).isEqualTo("OUTERWEAR");
    assertThat(categories.get(2).getName()).isEqualTo("Outerwear");
    assertThat(categories.get(2).getDescription()).isEqualTo("Down jackets, parkas and gilets");
    assertThat(categories.get(3).getCategoryId()).isEqualTo("SHIRTS");
    assertThat(categories.get(3).getName()).isEqualTo("Shirts");
    assertThat(categories.get(3).getDescription()).isEqualTo("Polo and button-down shirts");
    assertThat(categories.get(4).getCategoryId()).isEqualTo("TROUSERS");
    assertThat(categories.get(4).getName()).isEqualTo("Trousers");
    assertThat(categories.get(4).getDescription()).isEqualTo("Cargo, track and tailored trousers");
  }

  /**
   * Gets the category.
   */
  @Test
  void getCategory() {
    // given
    String categoryId = "ACCESSORY";

    // when
    Category category = mapper.getCategory(categoryId);

    // then
    assertThat(category.getCategoryId()).isEqualTo("ACCESSORY");
    assertThat(category.getName()).isEqualTo("Accessories");
    assertThat(category.getDescription()).isEqualTo("Beanies and scarves");
  }

}
