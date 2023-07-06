if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/mksir12/tomvineet.git /tomvineet
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /tomvineet
fi
cd /tomvineet
pip3 install -U -r requirements.txt
echo "Starting DQ-_TOM...."
python3 bot.py
