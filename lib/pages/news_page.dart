import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:poker_app/bottom_bar.dart';
import 'package:poker_app/model/news_item.dart';
import 'package:poker_app/pages/description_news_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      title:
          'Poker Player Ryan Garcia Upsets Heavily Favored Devin Haney in What Should Have Been a Title Fight',
      text:
          'Ryan Garcia, who has appeared multiple times on Hustler Casino Live, pulled off an upset in the boxing ring Saturday night against the heavily favored Devin Haney, winning via majority decision. One judge surprisingly scored the match 112-112 despite Garcia knocking his opponent down three times, while the other two judges scored it 114-110 and 115-109, although many boxing fans felt it should have been a unanimous decision. Either way, the winner is now 25-1 (20 knockouts) in his professional career, while the losing boxer lost for the first time in 32 fights. The fight at Brooklyn\'s Barclays Center was originally slated to be for the WBC welterweight title. That was until Friday\'s controversial weigh in. Garcia weighed in at 143.2 pounds, 3.2 pounds over the 140-pound welterweight threshold. As such, no matter the outcome of the fight, he was not eligible to claim the belt. But the boxers agreed to continue with the match as planned. Haney entered Saturday\'s contest as a heavy favorite (-900 odds to win at some sportsbooks at one point). Garcia was given little chance to defeat the unbeaten champ. In a recent CBS Sports prediction article, all three boxing experts predicted Haney to win by technical knockout. In Round 7, Garcia knocked Haney to the canvas, the first time that has happened to the now former champ in 32 professional fights. Garcia dominated the match so much that even a one-point penalty following the knockdown didn\'t help his opponent. A right hook in the 10th round sent Haney to the canvas again, and then one more time with the left in the 11th round. Although Garcia didn\'t knock Haney out, it was a convincing performance that left few other than one judge questioning who truly won the fight. With the winner ineligible for the junior welterweight title due to his pre-fight weight, the belt is now vacant.',
      image:
          'https://cdn.britannica.com/73/244173-131-6F9065A1/Royal-Flush-poker-card-game-gambling.jpg',
    ),
    NewsItem(
      title:
          'Day 1a of WPT Seminole Hard Rock Poker Showdown Brings Out the Heavy Hitters',
      text:
          'The biggest and most popular World Poker Tour (WPT) stop of the year is underway in Hollywood, Florida with the WPT Seminole Hard Rock Poker Showdown. The series features the \$3,500 buy-in WPT Seminole Hard Rock Poker Showdown Championship, a \$3 million guaranteed event that kicked off on Friday with Day 1a. The massive starting flight attracted 945 runners, only 298 of whom survived to see Day 2, which will take place on Sunday, April 21. Leading the way with a stack of 505,500, good for 202 big blinds, is Brazil\'s Eider Da Cruz, ahead of fellow big stacks John Krpan (504,500), Myles German (466,000) and Jose Nadal (456,500). Nearly the entire ballroom at Seminole Hard Rock was filled up on Friday afternoon as hundreds of players made they way to their seats in the Championship event. By the time registration closed after Level 9, the \$3 million guarantee had already been reached. The packed field included poker author and mixed game specialist Dylan Linde, who just weeks ago shipped the WPT Voyage \$10,000 High Roller for \$230,467 as he added to his nearly \$8 million in live earnings. Linde played a pot in the middle of Day 1a with Poker Hall of Famer Erik Seidel, who himself is fresh off a victory at the US Poker Open in Las Vegas just a few months after winning his tenth bracelet in the Bahamas.',
      image:
          'https://img.goodfon.com/wallpaper/big/d/ba/kazino-karty-tuzy-poker.jpg',
    ),
    NewsItem(
      title:
          '"Dirty Diaper" Comes Back to Haunt Rigby as Opponents Play it Back at WPT SHRPS',
      text:
          'If the monotone chants of "RIG-BY! RIG-BY!" mean anything to you, you may have been in the Rio Amazon Room in Las Vegas during the 2021 World Series of Poker (WSOP) Main Event. It was here that Pittsburgh\'s Nicholas Rigby became a household name in the poker world for his loose-aggressive, bluff-intensive playing style. And if the name Rigby doesn\'t ring a bell, the phrase "Dirty Diaper" might. It\'s the nickname for deuce-three offsuit, which may be a rag holding in most poker games but may as well be the nuts in home games back in the Burgh. And thanks to his TV time on the feature table, it is also Rigby\'s signature poker hand. After several deep Main Event runs in Las Vegas, Rigby is tried his luck on the World Poker Tour (WPT) and used his aggressive play and loose image to build up a top stack on Day 1b of the WPT Seminole Hard Rock Poker Showdown Championship in Hollywood, Florida. As he built up a stack before dinner break on Day 1b, it dwelled on Rigby that the Dirty Diaper was had come back to haunt him. “I’ve had it played on me five times," he told PokerNews. "I think they’re five-for-five with it. Its powers are shifting. I haven’t played it often; I think I’ve only had it twice.” Despite getting the Dirty Diaper shoved in his face, Rigby managed to score several knockouts at what he described as "a fun table" with "a lot of conversations.""We had a lot of knockouts today, so a ton of chips at our table," he said. "People were getting picked off one by one. (I) just picked up some hands before dinner break.”',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI660Ma82jhby9GW2X9FC0Nf9U2HdIn0Ov2Rd512oxw&s',
    ),
    NewsItem(
      title:
          'Bubble Bursts on Day 2 of WPT SHRPS as 101 Players Advance; Josh Reichard Leads',
      text:
          'Day 2 of the World Poker Tour (WPT) Seminole Hard Rock Poker Showdown Championship wrapped up late on Sunday night as 101 players found bags to advance to Day 3. Out in front is Wisconsin\'s Josh Reichard, who sits tied for second on the all-time WSOP Circuit ring list as he searches for a maiden WPT title. Reichard will enter Day 3 ahead of fellow big stacks Michael Rocco, Anthony Spinella and Scott Baumstein. There were 236 players left with 234 spots paid when a double elimination took place that made hand-for-hand play unnecessary. Stuart Young was the first to go as his ace-ten couldn\'t survive a three-way pot, while Brandon Hamlet was next to go to miss out on a minimum payday of \$6,400. It was an unfortunate finish for Hamlet, who made a splash in poker social media circles after pulling off a wild bluff on Day 1a that saw his opponent folding an ace-high flush on a paired board. There were 643 players who entered Day 2 and, despite the 60-minute level structure, they it only took a few hours for that number to half. As the money bubble encroached, some of those who failed to cash included Jason Mercier, Gerome Guitteau and Aditya Prasetyo. All eyes have been on the upcoming high-stakes crossbook this summer between young poker stars Landon Tice and Jeremy Becker, and both players were in the Day 2 field. This warmup round went to Tice as he advanced to Day 3, while the "King of the Dailies" bowed out in 120th place for \$8,200. Other in-the-money eliminations on Day 2 included Matt Stout (216th - \$6,400), Day 1b chip leader Maxwell Young (161st - \$7,000), David Jackson (150th - \$8,200), Ray Qartomy (137th - \$8,200), Raminder Singh, (141st - \$8,200), Blake Bohn (127th - \$8,200) and poker coach Faraz Jaka, whose small blind three-bet jam was called by an opponent who had his king-seven dominated. Meanwhile, Day 1a chip leader Eider Da Cruz is still kicking headed into Day 3 after getting life by doubling through Damien Simon during Level 17. The SHRPS Championship action will continue with Day 3 on Monday, April 22 at noon local time as the event gets closer to crowning a winner. Before that happens, there\'s still Day 4 that will play down to a six-handed final table, at which point action will pause until May 29 when the final table plays out in Las Vegas. PokerNews is here at Seminole Hard Rock and will continue to write about the SHRPS action, while live updates from the event can be found on the WPT site.',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR18NSXyyu553GqrNAaOCeYIxEXn-7ziFTM5U3chozblQ&s',
    ),
    NewsItem(
      title:
          'Young Guns Headline Final Six in WPT Seminole Hard Rock Poker Showdown Championship',
      text:
          'The early data is in for the path of inflation during the first three months of 2024, and the news so far is, well, not good. Pick your poison. Whether it’s prices at the register or wholesale input costs, while inflation is off the blistering pace of 2022, it doesn’t appear to be going away anytime soon. Future expectations also have been drifting higher. Investors, consumers and policymakers — even economists — have been caught off guard with just how stubborn price pressures have been to start 2024. Stocks slumped Friday as the Dow Jones Industrial Average coughed up nearly 500 points, dropping 2.4% on the week and surrendering nearly all its gains for the year. “Fool me once, shame on you. Fool me twice, shame on me,” Harvard economist Jason Furman told CNBC this week. “We’ve now had three months in a row of prints coming in above just about what everyone expected. It’s time to change the way we think about things going forward.” No doubt, the market has been forced to change its thinking dramatically. Even import prices, an otherwise minor data point, contributed to the narrative. In March, it posted its biggest increase for a three-month period in about two years. All of it has amounted to a big headache for markets, which sold off through most of the week before really hitting the skids Friday. As if all the bad inflation news wasn’t enough, a Wall Street Journal report Friday indicated that Iran plans to attack Israel in the next two days, adding to the cacophony. Energy prices, which have been a major factor in the past two months’ inflation readings, pushed higher on signs of further geopolitical turmoil.',
      image:
          'https://s3.amazonaws.com/si-fl-wp/wp-content/uploads/20160714085124/gaming_poker_cards.jpg',
    ),
    NewsItem(
      title:
          'Josh Reichard Leads Final 16 in WPT SHRPS; Lonis, Linde & Tice in Contention',
      text:
          'Fifteen-time Circuit ring winner Josh Reichard is hungry to add a World Poker Tour (WPT) title to his poker resume, and he\'s in great shape to do so after bagging a massive chip lead with 16 players left in the WPT Seminole Hard Rock Poker Showdown Championship. The Wisconsin crusher ended Day 3 with a stack of over 200 big blinds after also bagging the Day 2 chip lead. If the momentum keeps up, he will have his name on the Mike Sexton WPT Championship Cup and will earn the top prize of \$839,300. Though he has heaps, Reichard will have to get through a field that includes poker prodigies Landon Tice and Jesse Lonis, the latter of whom hasn\'t busted a Main Event in this venue in eight tournament days as he chopped the Lucky Hearts Poker Open Championship in January three ways for \$404,267. The field also includes 2018 WPT Five Diamond World Poker Classic winner Dylan Linde, the only WPT Champions Club member remaining in the field. The poker author\'s deep run comes just weeks after he won a \$10,000 High Roller on the WPT Voyage for \$230,467. There were 101 players who returned for Day 3 after an eventful Day 2 that included the bursting of the money bubble, and Reichard led the way with a stack 3,100,000. He only further amassed chips from there as the field shrunk by more than three-quarters and ended up putting 22,200,000 in the bag. He\'s far in front of the next closest in chips, Alex Queen with 14,250,000, who himself is far in front of Wasim Assaf with 6,750,000. Tice sits fifth in the chip counts while Lonis is further down the list, though both should be counting themselves lucky to advance. During Level 27, the two played a dramatic hand where Lonis was all in with pocket sixes against the ace-nine of Tice. Lonis flopped a set to take a decent lead ahead of the gutshot of Tice, who hit his straight on the turn before the river put the same straight on the board to result in a chop. "What a f***in\' game, huh?" Tice said with a smile as the dealer divided the pot.',
      image:
          'https://img.freepik.com/premium-photo/vector-playing-casino-card-chips-dice-flying-background-pocker-explode-game-background_1000408-403.jpg',
    ),
    NewsItem(
      title:
          'Rampage Wants the \'Chat Pros\' to Bet Against Him at the World Series of Poker',
      text:
          'Ethan "Rampage" Yau is putting his money where his mouth is heading into the 2024 World Series of Poker (WSOP), and he\'s asking for the "chat pros" to do the same. The popular poker vlogger who isn\'t afraid to gamble for massive stakes called out his doubters on X in hopes of securing what could be the biggest prop bet of the summer that doesn\'t involve Landon Tice and Jeremy Becker, unless of course they want in on the action."Idea for WSOP prop bet, would anyone be interested in fading me and my entire schedule? I’m 0/2 in profitable summers lifetime and looking to make things interesting. Looking to increase my exposure x2 basically and the fader acts as casino. If I brick a 5K, I lose extra 5K on top within prop bet. If I min cash a 5K for 9K, I’ll profit an extra 4K. Winning a 5K for \$300K~ then I profit 295K. Looking for action for my whole schedule or capped to a buy in amount. Chat pros, your time to step up and put your money where your Twitter thumbs are," Yau tweeted. Rampage, a 2020 online bracelet winner and five-time World Series of Poker Circuit (WSOPC) ring champion, is one of the most polarizing figures in the game. His YouTube channel has nearly 300,000 subscribers, many of whom are loyal fans who have followed his action from \$1/\$3 all the way up to playing in \$1 million buy-in games. But the vlogger has his share of detractors, those who claim he plays too big and doesn\'t belong at the nosebleed stakes. Those individuals now have an opportunity to prove they are right, so long as they are willing to gamble.',
      image:
          'https://imageio.forbes.com/specials-images/imageserve/5d7b1e04aea4d30008f0d674/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds',
    ),
    NewsItem(
      title: 'Poker Hall of Famer Crandell Addington Passes Away at 85',
      text:
          'The Poker Hall of Famer cashed four times in the World Series of Poker (WSOP) Main Event — three times in the 1970s — including runner-up finishes to Johnny Moss (1974), Doyle Brunson (1976), and Bobby Baldwin (1978). Addington, born June 2, 1938 in Graham, Texas, passed away April 14, 2024. He competed in the first ever World Series of Poker in 1970 against Brunson, Moss, Amarillo Slim, Puggy Pearson, Sailor Roberts, and Carl Cannon. Back then, poker\'s world championship event was tiny and in its infancy, and the winner — Moss — was determined by a vote. The late poker legend still holds the record for most WSOP Main Event final table appearances with seven. His last WSOP cash came in the 1989 Main Event, a 36th place finish for \$7,500. Addington was one of the lone remaining Texas road gamblers from the 1960s and 1970s. He came up in poker competing against the likes of Brunson, Moss, and Amarillo Slim, all Texans and fellow Poker Hall of Famers. In 2005, Addington joined the crew in the HOF, and was inducted alongside Jack Binion. Poker was far from the only thing Addington is known for. The Southwestern University graduate with degrees in economics and accounting put that college education to good use after leaving Nevada to return to his Texas roots in San Antonio. He was an entrepreneur and the CEO, Chairman, and Director of Phoenix Biotechnology, a cancer treatment research organization. A Celebration of Life memorial is set for Mr. Addington on April 26 at the Paisanos Restaurant in Lincoln Heights, Texas, not far from his home in San Antonio.',
      image:
          'https://media.istockphoto.com/id/1266795611/photo/pocker-playing-cards-deck-of-playing-cards-blue-and-red-playing-cards.jpg?s=612x612&w=0&k=20&c=o729rjAAnVdkCLgD1cO6Pn_DfuDYH4aElWmpvfy72lM=',
    ),
    NewsItem(
      title:
          '"One of My Biggest Dreams": Reigning POY Bin Weng Reflects on WPT SHRPS Victory',
      text:
          'Bin Weng\'s breakout year in 2023 is matched only by a select few runs in tournament poker history, such as Daniel Coleman\'s eight-figure steamrolling in 2014 or Michael Addamo\'s more recent high-roller tear through 2021. Unlike the sunrunners who came before him, Weng has shown no signs of stepping back from live poker. A quarter into the new year, Weng has already racked up nearly two dozen Hendon Mob cashes — including a second Circuit ring victory in Pompano Beach — though none of them have quite lived up to Weng\'s standards. "Not really (any notable results) this year so far," Weng laughed. "But hey, I’m trying.” The Pennsylvanian\'s incredible 2023, which saw him winning the WPT and GPI Player of the Year awards, was highlighted by a victory in the World Poker Tour (WPT) Seminole Hard Rock Poker Showdown Championship for \$1,128,250. One year later, Weng is ready to defend his title. From the moment he sat down at the final table of the 2023 WPT SHRPS Championship with the chip lead, Weng had his eyes on the Mike Sexton WPT Champions Cup. It was four months after Weng secured a career-best score of an even \$1 million at Borgata, and he was eager to surpass it. “I remember I was so, so, so emotional when the last hand played out," Weng told PokerNews. "When I knew I was winning the event. Because winning a WPT Main Event is one of my biggest dreams that made me decide to start playing poker. So it meant a lot to me. I was very emotional, very happy, can’t even believe that I (won) that last year."',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3FwxpVl8nilLjvdCVnYn0kGExamRkcmN0yQ&s',
    ),
    NewsItem(
      title:
          'Lorenz Schollhorn Wins the Biggest-Ever WPT Prime Gold Coast Championship',
      text:
          'If you ever needed proof that live tournament poker is as popular in Australia than it has ever been, the WPT Prime Gold Coast Championship is it. Some 1,395 players piled into The Star Gold Coast over three starting flights, each paying AU\$2,000 and creating an AU\$2,511,000 (US\$1,611,811) prize pool. The bumper attendance was not only a record for the WPT Prime Gold Coast but also the largest of any WPT Prime event (that had three starting days) in the tour\'s history. Lorenz Schollhorn will forever be known as this mammoth-sized tournament\'s champion. The WPT Prime Gold Coast Championship\'s prize pool was distributed among the top 177 finishers. It should have been 175, but Paul Murray, Jesse Stanley, and Omer Silajdzija busted at the same time on the bubble and they chopped up a \$2,211 min-cash. Seasoned grinders such as Will Davies, the WPT Anchor Lynn Gilmartin, Kahle Burns, Billy "The Croc" Argyros, Sean Ragozzini, Kannapong Thanarattrakul, and Guy Taylor, finished in the money places but missed out on a final table appearance. Those who did navigate their way to the final table secured an AU\$40,140 (US\$25,766) payout. Martin Ward\'s time at the final table was short-lived because he bowed out during the first hand. Schollhorn min-raised to 500,000 from the cutoff with ace-queen before snap-calling Ward\'s eight big blind shove, which he made with the dominated ace-eight of diamonds. Schollhorn\'s queen-kicker played, and Ward was gone. Eighth place was settled a mere six hands later. Having lost all but two big blinds when Chin Yaw Chan cracked his pocket kings with pocket tens, Marco Perri pushed all in from under the gun with king-ten. Chan called in late position with pocket eights, and Schollorn came along for the ride in the big blind with seven-five offsuit. Both active players checked down the board, and Chan\'s snowmen claimed the pot and Perri\'s tournament life.',
      image: 'https://pnimg.net/w/articles/4/662/7dc7f93760.jpg',
    ),
    NewsItem(
      title:
          'Hungary\'s "KMSZI11" Crowned PokerStars Sunday Million Season Finale Champion',
      text:
          'The PokerStars Sunday Million Season concluded on April 22 with the crowning of the \$109 buy-in, \$1.5 million guaranteed Sunday Million Season Finale. The title of champion and a \$177,532 payout are heading to Hungary after "KMSZI11" came out on top under the watchful eyes of the PokerStars Twitch stream. The Sunday Million Season Finale drew in 14,777 entrants on Day 1, and they were whittled to a more manageable 152 by the time the tournament went on break for the final time. Three of PokerStars\' ambassadors reached the money places: Marle "MarlTV" Spragg finished 1,960th for \$183, Laurie "LaliTournier" Tournier fell in 1,614th for \$219, and Parker "tonkaaaa" Talbot came unstuck in 250th for \$542. Brazil\'s "eQQaw" returned for Day 2 in the enviable position of chip leader, but they could not build on their Day 1 success, and crashed out in 63rd place. Nineteenth place was the deepest any of the overnight top ten came to becoming this tournament\'s champion; Germany\'s "Zwiebling" bowing out in that spot for \$3,056. Each of the nine players who navigated their way to the final table of the Sunday Million Season Finale locked in a five-figure prize for their efforts. Poland\'s "pAArich" was the first of those finalists to receive some prize money; they busted out in cruel circumstances. Down to only 1.5 big blinds, "pAArich" open-shoved from the button with pocket aces, and "Pablos701" isolated them with an all-in bet from the small blind with king-six of spades. "Pablos701" paired their six on the flop and caught a third six on the river, ending "pAArich"\'s hopes of a comeback.',
      image:
          'https://img.freepik.com/premium-photo/pile-casino-pocker-gambling-chips-dices-green-table_220507-21473.jpg',
    ),
    NewsItem(
      title:
          'WPT SHRPS Nearly Doubles \$3M Guarantee During Final Starting Flight',
      text:
          'The second and final starting flight of the World Poker Tour (WPT) Seminole Hard Rock Poker Showdown Championship wrapped up on Saturday evening with 356 players remaining and Maxwell Young out in front with a stack of 623,000. That stack of 249 big blinds is good to put him in front of yesterday\'s chip leader, Eider Da Cruz (505,500), as well as fellow Day 1b big stacks Valeriy Pak (530,000) and Gregory Wilson (455,500). Day 1b of the Seminole Hard Rock Poker Showdown Championship in Hollywood, Florida drew 924 runners, a few pips off from the 945 who played Day 1a. That means that, with a prize pool of \$5,980,000 that nearly doubled the \$3 million guarantee, there will be 234 places paid with a minimum cash worth \$6,400. Meanwhile, the eventual winner will walk away with \$839,300, which includes entry into the \$10,400 WPT World Championship at Wynn Las Vegas in December. Young, who has over \$2.7 million in live earnings, will look for his maiden WPT Main Event title just a month after taking down a WPT Rolling Thunder event for \$53,000. Leading the way headed to dinner break was Uzbekistan\'s Pak, who is searching for his first WPT title after several close calls. Last year, he finished runner-up in the WPT Korea Main Event for \$290,000 before ending the year with a sixth-place finish in the WPT Prime Championship for \$290,000.',
      image: 'https://pnimg.net/w/articles/4/662/4754f5be78.jpg',
    ),
    NewsItem(
      title:
          'How Did New Jersey\'s Five Legal Online Poker Sites Perform in March?',
      text:
          'The New Jersey online poker market was down a bit in March compared to the same month last year, but still put up some impressive numbers. There are five operational legal poker sites in the Garden State, licensed through three Atlantic City casinos (Borgata, Caesars, and Resorts World). As has been the case for years, the state\'s top earning poker sites are PokerStars (Resorts) and WSOP.com (Caesars), with some solid traffic also at Borgata, BetMGM (Borgata) and partypoker (Borgata). While the bad news is revenue dropped last month compared to March 2023, it wasn\'t a steep decline and the months of April and beyond are setting up quite nicely for the state of New Jersey\'s poker sites. According to data collected from the New Jersey Department of Gaming Enforcement (NJDGE), the state\'s five sites combined to generate \$2,358,271 in revenue. That\'s down 5.3% compared to March 2023. PokerStars, as per usual, topped the charts with \$822,378 in rake collected, but dropped 13.8% from the same month a year ago. WSOP.com, which has a shared liquidity deal with Nevada, had \$712,795 in revenue, down 7%. The Borgata trio of NJ poker sites combined for \$823,098 last month, up 6.8%. Despite a slight dip compared to March 2023, the upcoming months, including the current month, figure to be strong for New Jersey. One reason is the recently completed PokerStars Spring Championship of Online Poker (SCOOP) series that brought in large fields. Another reason is the upcoming World Series of Poker (WSOP), which doesn\'t only take place at Horseshoe and Paris casinos in Las Vegas. WSOP.com NJ, in conjunction with NV, will offer numerous online bracelet events this summer, although the schedule still isn\'t available.',
      image: 'https://pnimg.net/w/articles/4/662/8138d0f1d6.jpeg',
    ),
    NewsItem(
      title: 'Your Guide to APT Jeju, South Korea 2024',
      text:
          'The Asian Poker Tour (APT) returns to the beautiful South Korean island of Jeju for the APT Jeju, South Korea 2024 festival. It has been seven years since the APT dropped anchor in Jeju, and Asia\'s premier poker tour is doing everything possible to make the festival one to remember. Running from April 26 though May 5, APT Jeju, South Korea 2024 has combined prize pools of over KRW 5 billion (\$3.76 million), including a massive Main Event boasting a prize pool of at least KRW 2 billion (\$1.5 million). Amazingly, that guarantee is 20 times larger than when Japan\'s Katsuhiro Muto took down the APT Jeju Main Event in March 2017, showing how far the APT has come in a short time. APT Jeju, South Korea 2024\'s tournaments take place at the Jeju Shinhwa Resort, while all cash games run inside the nearby Landing Casino Jeju. 304 38 Sinhwayeoksa-ro, 특별자치도, Seogwipo-si, Jeju-do, South Korea is the address you need to tell your taxi driver if you don\'t already know where the venues are!Although the APT wants everyone attending the festival to have fun, the casino does have some rules that must be adhered to. First, the minimum age is 19, and players must bring a valid government-issued passport of photo ID to complete in any event or to redeem any prizes. There is a smart casual dress code, which means no shorts, vests, or sandals, while the use of cameras and video equipment is not permitted inside the casino. The casino only permits smoking in the designated smoking area.',
      image: 'https://pnimg.net/w/articles/4/662/91d099b686.jpg',
    ),
    NewsItem(
      title:
          'Brazilians Win Big in the 888poker Micro Rollers ChampionChips Main Event',
      text:
          'The Micro Rollers ChampionChips festival concluded at 888poker on April 23 with the crowning of the \$100,000 guaranteed Main Event. The Main Event only cost \$25 to enter, yet boasted a six-figure guarantee. Including re-entries, the Main Event saw 4,635 players buy-in, meaning the prize pool stood at an impressive \$104,310. Brazilians cleaned up in the Main Event, finishing third, fourth, and on top. "9saymon" came out on top and received \$6,372, including bounties, plus the title of Micro Rollers ChampionChips Main Event champion. Mystery bounties came into play from Day 2 onwards, including one weighing in at \$10,000. "Competencia," another Brazilian, pulled out the \$10,000 before crashing out in 200th place. The two \$4,000 bounties went to players who navigated their way to the final table. The final table lost its first player early into the action. "Ph4N888" open-shoved for a shade over eight big blind from the cutoff with king-jack, only for "Dadidgg" to call in the small blind with the dominating king-queen. A queen on the flop left the all-in player drawing thin; they were drawing dead on the turn. "Corner130" had sat down at the final table with only five big blinds, so a comeback was unlikely. Such a comeback became impossible after they found themselves all-in from under the gun with king-nine and up against the ace-king of "9saymon." The all-heart flop contained an ace, but "corner130" held the nine of hearts and also had outs to a chop. However, the turn and river bricked, and "corner130" was gone. The flurry of eliminations continued with the exit of Ukraine\'s "Vozdushnil." "blefador97" min-raised to 500,000 from under the gun with queen-eight of diamonds, "Vordushnil" three-bet all-in from the button for 1,320,778 with ace-seven, and the original raiser called. The queen-eight improved to a flush on the turn, sending another player to the showers.',
      image: 'https://pnimg.net/w/articles/4/662/9104947f5a.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      fontSize: 28,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
          const BottomBar(),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => DescriptionNewsPage(
                        news: news,
                      )),
            );
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: const Color(0xFF1144FA))),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 98,
                    width: 98,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(
                              news.image!,
                            ))),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  news.title!,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontFamily: 'SF Pro Text',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Read news',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Color(0xFF1144FA),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
