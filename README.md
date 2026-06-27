# hr-аналитика: анализ текучести кадров

анализ факторов, влияющих на увольнение сотрудников, на основе открытых данных ibm.

## цель проекта

выявить ключевые драйверы текучести и предложить рекомендации для hr-отдела.

## данные

- источник: ibm hr analytics employee attrition & performance (kaggle)
- размер: 1470 сотрудников, 35 признаков
- целевая переменная: attrition (yes/no)

## основные выводы

| метрика | значение |
|---------|----------|
| общий уровень текучести | 16.2% |
| отдел с самой высокой текучестью | sales (20.6%) |
| самая уязвимая группа | сотрудники до 30 лет |
| разница в зарплате | уволившиеся получают на 15% меньше |

## технологии

- python (pandas, numpy, matplotlib, seaborn)
- sql (postgresql)
- jupyter notebook

## структура проекта
hr-attrition-analysis/
    README.md
    requirements.txt
    hr_attrition_analysis.ipynb
    hr_attrition_analysis.png
    data/
        clean_hr_data.csv
    sql_queries/
        queries.sql

## как запустить
git clone https://github.com/yar1k14/hr-attrition-analysis.git
cd hr-attrition-analysis
pip install -r requirements.txt
jupyter notebook hr_attrition_analysis.ipynb

## автор

**ярослав бородин**  
[github](https://github.com/yar1k14) · [telegram](https://t.me/gpk_4) · [email](mailto:chebbbik1@gmail.com)
