<?php

use App\Cast;
use App\Podcast;
use App\Tag;
use App\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class PodcastsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = [1, 3];

        $categories = range(1, 7);
        $categoriesCount = count($categories);

        $languages = range(1, 4);
        $languagesCount = count($languages);

        $tags = ['love', 'instagood', 'photooftheday', 'fashion', 'Beautiful', 'like4like', 'picoftheday', 'art', 'happy', 'photography', 'instagram', 'followme', 'style', 'follow', 'instadaily', 'travel', 'life', 'cute', 'fitness', 'nature', 'beauty', 'girl', 'fun', 'photo', 'amazing', 'likeforlike', 'instalike', 'Selfie', 'smile', 'me', 'lifestyle', 'model', 'follow4follow', 'music', 'friends', 'motivation', 'like', 'food', 'inspiration', 'Repost', 'summer', 'design', 'makeup', 'TBT', 'followforfollow', 'ootd', 'Family', 'l4l', 'cool', 'igers', 'TagsForLikes', 'hair', 'instamood', 'sun', 'vsco', 'fit', 'beach', 'photographer', 'gym', 'artist', 'girls', 'vscocam', 'autumn', 'pretty', 'luxury', 'instapic', 'black', 'sunset', 'funny', 'sky', 'blogger', 'hot', 'healthy', 'work', 'bestoftheday', 'workout', 'f4f', 'nofilter', 'london', 'goals', 'blackandwhite', 'blue', 'swag', 'health', 'party', 'night', 'landscape', 'nyc', 'happiness', 'pink', 'lol', 'foodporn', 'newyork', 'fitfam', 'awesome', 'fashionblogger', 'Halloween', 'Home', 'fall', 'paris'];
        $tagsCount = count($tags);

        $casts = ['Master Chief', 'Lara Croft', 'Cloud Strife', 'Max Payne', 'Marcus Fenix', 'Sarah Kerrigan', 'Bonnie MacFarlane', 'Sam Fisher', 'Gordon Freeman', 'Deckard Cain', 'Nathan Drake', 'Ryu Hayabusa', 'Ezio Auditore De Firenze', 'Danny Williams', 'Alyx Vance', 'Jill Valentine'];
        $castsCount = count($casts);

        $fileTypes = ['video', 'audio'];

        $words = [
            "The", "Knights", "Who", "Say", "Ni", "demand", "a", "sacrifice", "Who's", "that", "then", "What", "do", "you", "mean", "Now", "look", "here", "my", "good", "man", "The", "Knights", "Who", "Say", "Ni", "demand", "a", "sacrifice", "Look", "my", "liege", "Well", "we", "did", "do", "the", "nose", "The", "nose", "Well", "how'd", "you", "become", "king", "then", "And", "this", "isn't", "my", "nose", "This", "is", "a", "false", "one", "I", "am", "your", "king", "Shut", "up", "But", "you", "are", "dressed", "as", "one", "Well", "I", "didn't", "vote", "for", "you", "I", "have", "to", "push", "the", "pram", "a", "lot", "Oh", "ow", "Be", "quiet", "Listen", "Strange", "women", "lying", "in", "ponds", "distributing", "swords", "is", "no", "basis", "for", "a", "system", "of", "government", "Supreme", "executive", "power", "derives", "from", "a", "mandate", "from", "the", "masses", "not", "from", "some", "farcical", "aquatic", "ceremony", "Shut", "up", "Camelot", "Bring", "her", "forward", "You", "can't", "expect", "to", "wield", "supreme", "power", "just", "'cause", "some", "watery", "tart", "threw", "a", "sword", "at", "you", "Shut", "up", "Now", "look", "here", "my", "good", "man", "You", "can't", "expect", "to", "wield", "supreme", "power", "just", "'cause", "some", "watery", "tart", "threw", "a", "sword", "at", "you", "I", "am", "your", "king", "The", "Lady", "of", "the", "Lake", "Her", "arm", "clad", "in", "the", "purest", "shimmering", "samite", "held", "aloft", "Excalibur", "from", "the", "bosom", "of", "the", "water", "signifying", "by", "divine", "providence", "that", "I", "Arthur", "was", "to", "carry", "Excalibur", "That", "is", "why", "I", "am", "your", "king", "Why", "do", "you", "think", "that", "she", "is", "a", "witch", "On", "second", "thoughts", "let's", "not", "go", "there", "It", "is", "a", "silly", "place", "Did", "you", "dress", "her", "up", "like", "this", "How", "do", "you", "know", "she", "is", "a", "witch", "On", "second", "thoughts", "let's", "not", "go", "there", "It", "is", "a", "silly", "place", "I", "have", "to", "push", "the", "pram", "a", "lot", "We", "want", "a", "shrubbery", "The", "swallow", "may", "fly", "south", "with", "the", "sun", "and", "the", "house", "martin", "or", "the", "plover", "may", "seek", "warmer", "climes", "in", "winter", "yet", "these", "are", "not", "strangers", "to", "our", "land", "Ah", "now", "we", "see", "the", "violence", "inherent", "in", "the", "system", "Bring", "her", "forward", "Did", "you", "dress", "her", "up", "like", "this", "Bring", "her", "forward", "Who's", "that", "then", "Shut", "up", "It's", "only", "a", "model", "Well", "we", "did", "do", "the", "nose", "We", "want", "a", "shrubbery", "And", "this", "isn't", "my", "nose", "This", "is", "a", "false", "one", "Bloody", "Peasant", "We", "shall", "say", "'Ni'", "again", "to", "you", "if", "you", "do", "not", "appease", "us", "She", "looks", "like", "one", "Shut", "up", "Will", "you", "shut", "up", "Well", "how'd", "you", "become", "king", "then", "Camelot", "Are", "you", "suggesting", "that", "coconuts", "migrate", "She", "looks", "like", "one", "Well", "Mercia's", "a", "temperate", "zone", "Where'd", "you", "get", "the", "coconuts", "I", "dunno", "Must", "be", "a", "king", "Bring", "her", "forward", "Did", "you", "dress", "her", "up", "like", "this", "She", "looks", "like", "one", "Well", "Mercia's", "a", "temperate", "zone", "We", "found", "them", "Well", "I", "didn't", "vote", "for", "you", "Burn", "her", "Who's", "that", "then", "What", "a", "strange", "person", "You", "can't", "expect", "to", "wield", "supreme", "power", "just", "'cause", "some", "watery", "tart", "threw", "a", "sword", "at", "you", "Why", "No", "no", "no", "Yes", "yes", "A", "bit", "But", "she's", "got", "a", "wart", "Are", "you", "suggesting", "that", "coconuts", "migrate", "What", "a", "strange", "person", "A", "newt", "We", "found", "them"];
        $wordsCount = count($words);

        $punctuations = [',', '!', '?', '.'];
        $punctuationsCount = count($punctuations);

        DB::beginTransaction();

        try {

            for ($i = 1; $i <= 300; $i++) {
                $userId = $users[rand(0, count($users) - 1)];
                $channels = User::findOrFail($userId)->channels()->get('id')->pluck('id')->toArray();
                $channelId = $channels[rand(0, count($channels) - 1)];
                $type = $fileTypes[rand(0, count($fileTypes) - 1)];

                $dateTimeString = Carbon::now()->toDateTimeString();

                $titleLength = rand(5, 15);
                $title = '';
                for ($j = 1; $j <= $titleLength; $j++) {
                    if ($j == 1 || $j == 2) {
                        $title .= $words[rand(0, $wordsCount - 1)] . ' ';
                    } else {
                        if ($this->weightedRand([0 => 85, 1 => 15]) == 0) {
                            $title .= $words[rand(0, $wordsCount - 1)] . ' ';
                        } else {
                            $title .= $punctuations[rand(0, $punctuationsCount - 1)] . ' ';
                        }
                    }
                }

                $descriptionLength = rand(30, 75);
                $description = '';
                for ($j = 1; $j <= $descriptionLength; $j++) {
                    if ($j <= 5) {
                        $description .= $words[rand(0, $wordsCount - 1)] . ' ';
                    } else {
                        if ($this->weightedRand([0 => 85, 1 => 15]) == 0) {
                            $description .= $words[rand(0, $wordsCount - 1)] . ' ';
                        } else {
                            $description .= $punctuations[rand(0, $punctuationsCount - 1)] . ' ';
                        }
                    }
                }

                $runtime = rand(180, 7800);

                $podcast = new Podcast();
                $podcast->user_id = $userId;
                $podcast->channel_id = $channelId;
                $podcast->filename = '';
                $podcast->file_type = $type;
                $podcast->title = ucwords(trim($title));
                $podcast->description = filter_var(ucwords(trim($description)), FILTER_SANITIZE_STRING);
                $podcast->size = rand(118008374, 958008374);
                $podcast->runtime = $runtime;
                $podcast->runtime_formatted = formatVideoRuntime($runtime);
                $podcast->privacy = $this->weightedRand([0 => 15, 1 => 85]);
                $podcast->license_id = $this->weightedRand([1 => 70, 2 => 30]);
                $podcast->monetize = 0;
                $podcast->comments_allowed = $this->weightedRand([0 => 25, 1 => 75]);
                $podcast->thumbnail = '';
                $podcast->converted = 1;
                $podcast->status = 1;
                $podcast->views = 0;
                $podcast->likes = 0;
                $podcast->dislikes = 0;
                $podcast->comments_count = 0;
                $podcast->created_at = $dateTimeString;
                $podcast->updated_at = $dateTimeString;
                $podcast->save();

                $podcast->languages()->sync([$languages[rand(0, $languagesCount - 1)]]);

                $podcastCategories = [];
                for ($j = 0; $j <= rand(1, 3) - 1; $j++) {
                    $podcastCategories[] = $categories[rand(0, $categoriesCount - 1)];
                }
                $podcast->categories()->sync(array_unique($podcastCategories));

                $podcastTags = [];
                for ($j = 0; $j <= rand(1, 4) - 1; $j++) {
                    $podcastTags[] = $tags[rand(0, $tagsCount - 1)];
                }
                $tagIds = array();
                foreach (array_unique($podcastTags) as $tag) {
                    if (!empty($tag)) {
                        $tagDetails = Tag::where('name', $tag)->first();
                        if (!empty($tagDetails)) {
                            $tagIds[] = $tagDetails->id;
                        } else {
                            $newTag = new Tag();
                            $newTag->name = $tag;
                            $newTag->slug = Str::slug($tag);
                            $newTag->save();
                            $tagIds[] = $newTag->id;
                        }
                    }
                }
                $podcast->tags()->sync($tagIds);

                $podcastCasts = [];
                for ($j = 0; $j <= rand(1, 4) - 3; $j++) {
                    $podcastCasts[] = $casts[rand(0, $castsCount - 1)];
                }
                $castIds = array();
                foreach (array_unique($podcastCasts) as $cast) {
                    if (!empty($cast)) {
                        $castDetails = Cast::where('name', $cast)->first();
                        if (!empty($castDetails)) {
                            $castIds[] = $castDetails->id;
                        } else {
                            $newCast = new Cast();
                            $newCast->name = $cast;
                            $newCast->slug = Str::slug($cast);
                            $newCast->save();
                            $castIds[] = $newCast->id;
                        }
                    }
                }
                $podcast->casts()->sync($castIds);

                DB::commit();
                $this->command->info('Iteration ' . $i . ' :: Successfully completed.');
            }

        } catch (Exception $exception) {
            DB::rollBack();
            $this->command->error('Iteration ' . $i . ' :: ' . $exception->getMessage());
        }


    }

    private function weightedRand(array $weightedValues)
    {
        $rand = mt_rand(1, (int) array_sum($weightedValues));

        foreach ($weightedValues as $key => $value) {
            $rand -= $value;
            if ($rand <= 0) {
                return $key;
            }
        }
    }

    private function generateTitle() {

    }

    private function generateDescription() {

    }
}
