import subprocess
import datetime

# Clean up old logs from HDFS
def cleanup_hdfs_logs(days=30):
    cutoff = datetime.datetime.now() - datetime.timedelta(days=days)
    # Mocking the HDFS list command
    print(f"Checking for logs older than {cutoff}")
    # In real usage: subprocess.run(["hdfs", "dfs", "-ls", "/var/log/spark"])
    
if __name__ == "__main__":
    cleanup_hdfs_logs(30)
