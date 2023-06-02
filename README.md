# Jaffle Shop template

I use this in order to create a new dbt project with the jaffle_shop models that you would build in the dbt fundamentals. It includes the models and seeds from the [dbt jaffle_shop project](https://github.com/dbt-labs/jaffle_shop) but adds the analyses, macros, tests, ... directories that you get when you initialize a dbt project in dbt Cloud

### Checks

Try running the following commands:
- dbt run
- dbt test

If you have configured everything correctly with the cloud connection (Snowflake in my case) and you have the data in the database, everything should work fine and you should be able to run everything.

If you want to work completely locally, you can change the staging references to the sources to point to the seeds instead.

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](http://community.getbdt.com/) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
