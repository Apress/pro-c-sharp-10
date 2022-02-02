namespace LazyObjectInstantiation;
// Represents all songs on a player.
class AllTracks
{
    // Our media player can have a maximum
    // of 10,000 songs.
    private Song[] _allSongs = new Song[10000];

    public AllTracks()
    {
        // Assume we fill up the array
        // of Song objects here.
        Console.WriteLine("Filling up the songs!");
    }
}