function Player(info){
  this.firstName = info.firstName
  this.atBats = info.atBats
  this.hits = info.hits
  this.runs = info.runs
};


Player.prototype.battingAverage = function()  {
  return this.hits/this.atBats;
}
