# Amazon_Vine_Analysis

## Overview of the analysis
The purpose of this analysis is to investigate whether there is any positivity bias for reviews in the Vine program. The Vine program is an Amazon service that provides products to reviewers for free in exchange for their honest and unbiased reviews. We will compare the number of 5-star reviews and their percentages for both paid (Vine) and unpaid (non-Vine) reviews.

## Results

### Dataset
https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Video_DVD_v1_00.tsv.gz

### Total number of Vine and non-Vine reviews

  - Vine reviews: 49
  - Non-Vine reviews: 151,400
  
### Number of 5-star Vine and non-Vine reviews

  - 5-star Vine reviews: 9
  - 5-star non-Vine reviews: 78,061
  
### Percentage of 5-star reviews for Vine and non-Vine reviews

  - Percentage of 5-star Vine reviews: 18.36%
  - Percentage of 5-star non-Vine reviews: 51.55%
  
#### Queries used
<img width="1101" alt="Paid_Reviews" src="https://user-images.githubusercontent.com/114355199/227788622-f42ee652-8533-4df5-bf2c-3aeeefec15e6.png">

<img width="1098" alt="unpaid reviews" src="https://user-images.githubusercontent.com/114355199/227788638-0798e507-9cdd-42df-8350-51ccf59f13b9.png">

  
## Summary

### Overall Summary

Based on the analysis, there is no clear evidence of positivity bias for reviews in the Vine program. The percentage of 5-star Vine reviews is 18.36%, which is lower than the percentage of 5-star non-Vine reviews at 51.55%. This suggests that the Vine program does not necessarily lead to a higher proportion of 5-star reviews compared to non-Vine reviews.

### Recommended Further Analysis
To further support this statement, an additional analysis that could be performed with the dataset is to examine the average rating for Vine and non-Vine reviews. By comparing the average ratings, we can gain more insights into whether the Vine program influences the overall ratings of the products. This would involve calculating the average star_rating for both Vine and non-Vine reviews and comparing the results.
