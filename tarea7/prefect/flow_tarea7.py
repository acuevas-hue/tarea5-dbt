from prefect import flow, task
import os
import subprocess
from dotenv import load_dotenv

load_dotenv()

DBT_PROJECT_DIR = os.getenv("DBT_PROJECT_DIR")


@task
def confirm_airbyte_sync_completed():
    print("Airbyte sync was executed manually before running this flow.")
    return "Airbyte sync confirmed"


@task
def run_dbt_build():
    result = subprocess.run(
        ["dbt", "build"],
        cwd=DBT_PROJECT_DIR,
        capture_output=True,
        text=True
    )
    print(result.stdout)
    print(result.stderr)
    if result.returncode != 0:
        raise Exception("dbt build failed")
    return "dbt build ok"


@flow(name="tarea7_pipeline")
def tarea7_pipeline():
    confirm_airbyte_sync_completed()
    run_dbt_build()


if __name__ == "__main__":
    tarea7_pipeline()