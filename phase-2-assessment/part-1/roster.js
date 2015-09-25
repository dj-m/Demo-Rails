function Roster(team){
  this.players = team
};


Roster.prototype.find = function(name){
  for (var i = 0; i < this.players.length; i++){
    if(this.players[i].firstName === name){
      return this.players[i]
    }
  }
}

Roster.prototype.allStars = function(){
  var allStars = []
  for (var i = 0; i < this.players.length; i++){
    if (this.players[i].battingAverage() > 0.2){
      allStars.push(this.players[i])
    }
  }
  return allStars
}
