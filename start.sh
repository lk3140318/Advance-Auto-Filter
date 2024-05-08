if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone hellmava/MoviesX /MoviesX
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MoviesX
fi
cd /MoviesX
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
