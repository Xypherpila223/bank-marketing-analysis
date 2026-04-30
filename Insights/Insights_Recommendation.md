
# 🏦 Bank Marketing Campaign — Findings & Recommendations

## 📊 Campaign at a Glance

| Metric | Value |
|---|---|
| Total Customers Contacted | 11,662 |
| Total Subscribed | 5,289 |
| Overall Subscription Rate | 47.38% |
| Best Performing Month | December (90.91%) |
| Worst Performing Month | May (32.75%) |

---

## 🔍 What We Found & What To Do About It

---

### 1. Calling More People Didn't Mean More Subscriptions

**What the data shows:**
- May had the most calls (2,824) but the worst results (32.75%)
- December had the fewest calls (110) but the best results (90.91%)
- The more we called, the worse we performed

**In simple terms:**
> The bank was spending the most money on the worst months

**Best months to run campaigns:**

| Month | Calls Made | Conversion Rate |
|---|---|---|
| December | 110 | 90.91% ✅ |
| March | 276 | 89.86% ✅ |
| September | 319 | 84.33% ✅ |
| October | 392 | 82.40% ✅ |
| May | 2,824 | 32.75% ❌ |

**What to do:**
> Run campaigns in March, September, October and December.
> Reduce mass calling during May to August.

---

### 2. We Don't Know How We Reached 2,346 Customers

**What the data shows:**
- 2,346 contacts had no recorded contact method (labeled "unknown")
- These unknown contacts converted at only 22.59%
- Cellular contacts converted at 54.33%
- This data gap made our overall results look worse than they are

**In simple terms:**
> Someone forgot to log how these customers were contacted.
> This one issue alone is hiding 6.6 points of our true performance.

| Contact Method | Calls | Conversion Rate |
|---|---|---|
| Cellular | 8,042 | 54.33% ✅ |
| Telephone | 774 | 50.39% ✅ |
| Unknown | 2,346 | 22.59% ❌ |

**Real performance without unknown contacts: 53.98%**
vs reported rate of 47.38% — a hidden 6.6 point gap

**What to do:**
> 1. Make it mandatory to log every contact method going forward
> 2. Prioritize calling customers on their mobile (cellular)
> 3. Reach out to unknown contacts to verify their preferred channel

---

### 3. Some Customers Are Much More Likely to Say Yes

We looked at four customer characteristics to find who converts best.

---

#### 👤 By Age Group

| Age Group | Conversion Rate | Performance |
|---|---|---|
| Young (18-29) | 59.83% | 🟢 Best |
| Senior (50+) | 51.97% | 🟢 Above average |
| Adult (30-39) | 44.30% | 🔴 Below average |
| Middle Age (40-49) | 40.45% | 🔴 Worst |

> Young and senior customers say yes most often.
> Yet adults (30-39) received the most calls — 4,318 contacts
> on a below average converting segment.

---

#### 💼 By Job Type

| Job | Conversion Rate | Performance |
|---|---|---|
| Student | 74.72% | 🟢 Best |
| Retired | 66.32% | 🟢 Very strong |
| Unemployed | 56.58% | 🟢 Above average |
| Management | 50.70% | 🟢 Above average |
| Technician | 46.08% | 🟡 Near average |
| Services | 39.98% | 🔴 Below average |
| Entrepreneur | 37.50% | 🔴 Below average |
| Blue Collar | 36.42% | 🔴 Worst |

> Students and retired workers are the best customers to target.
> Blue collar workers received 1,944 calls but converted poorly —
> second highest call volume, lowest conversion rate.

---

#### 🎓 By Education Level

| Education | Conversion Rate | Performance |
|---|---|---|
| Tertiary (University) | 54.11% | 🟢 Best |
| Secondary (High School) | 44.74% | 🔴 Below average |
| Primary (Basic) | 39.40% | 🔴 Worst |

> The higher the education level, the more likely a customer
> is to subscribe. University educated customers convert
> 14.71 points higher than those with only basic education.

---

#### 💍 By Marital Status

| Marital Status | Conversion Rate | Performance |
|---|---|---|
| Single | 54.35% | 🟢 Best |
| Divorced | 48.11% | 🟡 Average |
| Married | 43.38% | 🔴 Below average |

> Single customers are most likely to subscribe — probably
> because they have fewer financial obligations.
> Married customers make up 57% of all contacts but
> convert below the overall average.

---

## 🎯 Ideal Customer Profile

Based on all findings, the two best customer segments are:

**Primary Target 🥇**
> Young (18-29) • Single • Student • Tertiary Education
> Expected conversion: 66–74%

**Secondary Target 🥈**
> Senior (50+) • Retired • Tertiary Education
> Expected conversion: 52–66%

---

## ✅ Recommendations Summary

| # | Problem Found | What To Do | Expected Result |
|---|---|---|---|
| 1 | High volume months perform worst | Focus campaigns on Mar, Sep, Oct, Dec | Better conversion per call |
| 2 | Cellular works best | Prioritize mobile outreach | +3.94 points vs telephone |
| 3 | Unknown contacts hide true performance | Make channel logging mandatory | +6.60 points overall rate |
| 4 | Students & retired convert highest | Target these as priority segments | 66–74% conversion potential |
| 5 | Higher education = higher conversion | Focus on university educated customers | +14.71 points vs basic education |
| 6 | Single customers outperform married | Refine targeting filters | +10.97 points vs married |
| 7 | Blue collar underperforms at high volume | Reduce blue collar outreach | Frees budget for better segments |

---

## ⚠️ Things To Keep In Mind

- December, March and September had very few calls —
  results look great but sample sizes are small
- Recommendations should be tested in a small pilot
  campaign before full rollout
- Unknown contact records were excluded from
  channel performance calculations

---

## 🗂️ Data Quality Issues Found

| Issue | Records Affected | What It Means |
|---|---|---|
| No contact channel recorded | 2,346 | Hiding true campaign performance |
| Unknown job type | 70 | Minor gap in customer profiling |
| Unknown education level | 497 | Minor gap in customer profiling |

---

*Author John Butch Gromontil*
*Tools used: PostgreSQL • Tableau • Excel *
*Data source: UCI Bank Marketing Dataset via Kaggle*
