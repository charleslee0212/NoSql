function(doc) {
  if(doc._conflicts){
    emit(rev, doc._id)
  }
}
