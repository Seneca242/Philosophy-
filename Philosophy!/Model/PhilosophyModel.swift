//
//  PhilosophyModel.swift
//  Philosophy!
//
//  Created by Дмитрий Дмитрий on 11.04.2023.
//


//struct Philosophy {
//    let movements: [Movement]?
//    let schools: [School]?
//    let philosophers: [Philosopher]?
//}

struct Movement {
    let title: String
    let description: String?
    
    static func getMovement() -> [Movement] {
        [
            Movement(
                title: "Ancient Philosophy",
                description: "Ancient philosophy refers to the philosophical traditions that emerged in the ancient Mediterranean world, including Greece, Rome, and the Hellenistic world. It encompasses a wide range of philosophical schools and thinkers who sought to understand the nature of reality, knowledge, ethics, and the human condition. Ancient philosophers explored fundamental questions about the nature of the universe, the role of reason in human life, and the search for a meaningful and virtuous existence. Their ideas continue to influence modern philosophical thought and have shaped the Western intellectual tradition."
            ),
            Movement(
                title: "Medieval Philosophy",
                description: "Medieval philosophy refers to the philosophical thought that emerged in Western Europe during the Middle Ages, roughly spanning the period from the 5th to the 15th century. It was heavily influenced by Christian theology and Aristotelianism, which was reintroduced to the West through translations of Greek and Arabic texts. Medieval philosophers grappled with questions about the nature of reality, God, ethics, and the human soul. They sought to reconcile Christian doctrine with reason and philosophy, often drawing on ideas from ancient Greek and Roman philosophy. One of the most prominent medieval philosophers was St. Thomas Aquinas, who synthesized Aristotelian philosophy with Christian theology to create a comprehensive system of thought. Other notable figures include St. Augustine, who explored the nature of the human soul and its relationship to God, and William of Ockham, who emphasized the importance of simplicity and parsimony in philosophical and theological inquiry. Medieval philosophy played an important role in shaping the intellectual landscape of Western Europe, influencing not only theology and philosophy, but also science and politics. Its legacy continues to be felt in contemporary philosophical debates and discussions."
            )
        ]
    }
}

struct School {
    let title: String
    let description: String
    
    static func getSchool() -> [School] {
        [
            School(
                title: "Milesian School",
                description: "The Milesian School was a pre-Socratic philosophical movement that originated in the city of Miletus, located in present-day Turkey, during the 6th century BCE. The school is named after the three philosophers who are considered its founders: Thales, Anaximander, and Anaximenes. The Milesian School is known for its emphasis on naturalistic explanations for the origin and nature of the universe, as opposed to supernatural or mythical explanations. Thales is famous for his belief that all matter can be reduced to water, Anaximander for his concept of the apeiron or the boundless, and Anaximenes for his idea that air was the fundamental substance of the cosmos. The Milesian School is regarded as one of the earliest examples of systematic philosophical thought in Western history."
            ),
            School(
                title: "Pythagoreanism",
                description: "Pythagoreanism is a philosophical and mystical school that originated in ancient Greece and is based on the belief that all reality can be reduced to numbers. The philosophy also emphasizes the idea of a harmonious universe that can be understood through mathematical relationships and the cultivation of virtues. Pythagoreans believed in reincarnation and the transmigration of souls, with each lifetime offering an opportunity for spiritual growth and development."
            ),
            School(
                title: "Stoicism",
                description: "Stoicism is a philosophy that originated in ancient Greece and was later developed by Roman thinkers. It teaches that individuals should strive for inner peace and tranquility by accepting what is beyond their control and focusing on what they can control: their own thoughts, attitudes, and actions. Stoics believe that virtue is the key to happiness and that one should live in accordance with nature and reason. The philosophy emphasizes self-discipline, rationality, and the importance of living in harmony with others. Stoicism has had a lasting influence on Western thought and has been embraced by many as a practical philosophy for daily life."
            ),
            School(
                title: "Scholasticism",
                description: "Scholasticism was a medieval philosophical and theological system that emphasized the use of reason and logic to reconcile Christian theology with classical philosophy. It emerged in the 11th century and reached its peak in the 12th and 13th centuries, particularly in universities such as Paris and Oxford. Scholasticism aimed to harmonize faith and reason, and its proponents believed that it was possible to use reason to understand the nature of God and the world. The key figures of Scholasticism include Thomas Aquinas, Anselm of Canterbury, and Peter Abelard. The approach fell out of fashion with the rise of Renaissance humanism and the scientific revolution. Nonetheless, its emphasis on rational inquiry and critical thinking continues to influence contemporary philosophical and theological thought."
            ),
            School(
                title: "Mysticism",
                description: "Mysticism is a philosophical and spiritual school of thought that emphasizes the direct experience of the divine or ultimate reality. Mystics seek to transcend the limitations of rational thought and language, in order to gain insight into the nature of reality through intuitive and experiential means. Mysticism can be found in many religious traditions, including Christianity, Islam, Judaism, Buddhism, Hinduism, and Taoism. However, mysticism is not limited to religion, as some philosophical and scientific schools of thought, such as Transcendentalism and Quantum Physics, also incorporate mystical elements. Mystics often use techniques such as meditation, prayer, contemplation, and asceticism to achieve a state of altered consciousness and experience the divine. They may also engage in ecstatic practices such as dancing, chanting, and drumming to attain spiritual transcendence. Mysticism often involves a rejection of traditional dogma and doctrine, as mystics seek to experience the divine directly rather than through the intermediary of a religious institution or text. This can lead to a focus on personal experience and subjective interpretation, as opposed to objective truth. In summary, mysticism is a philosophical and spiritual school of thought that seeks to transcend the limitations of rational thought and language to attain direct experiential knowledge of the divine or ultimate reality. It emphasizes personal experience and subjective interpretation, often through practices such as meditation and prayer."
            )
        ]
    }
}

struct Philosopher {
    let name: String
    let biography: String
    let philosopherImage: String
    let doctrine: String
    
    static func getPhilosopher() -> [Philosopher] {
        [
            Philosopher(
                name: "Thales of Miletus",
                biography: "Thales of Miletus was an ancient Greek philosopher, mathematician, and astronomer who lived in the 6th century BCE. He is considered one of the Seven Sages of Greece and is often regarded as the first philosopher in the Western tradition. Thales was born in Miletus, an ancient city in Ionia (modern-day Turkey). He is said to have traveled extensively throughout Egypt and Babylon, where he studied mathematics and astronomy. Upon his return to Greece, Thales established a school of philosophy in Miletus. Thales is credited with numerous achievements, including accurately predicting a solar eclipse and discovering the principle of static electricity. He is also known for his contributions to geometry, particularly the theorem that states that the base angles of an isosceles triangle are equal. Thales' philosophy focused on the natural world and sought to explain it through rational inquiry rather than myth or legend. He believed that everything in the universe was made up of water, and that water was the fundamental substance from which all other substances were derived. Thales' influence on Western thought is immeasurable, and he is regarded as one of the founding fathers of philosophy and science. His legacy continues to inspire new generations of thinkers and innovators, and his ideas remain relevant to this day.",
                philosopherImage: "ThalesOfMiletus",
                doctrine: "Thales of Miletus believed that everything in the universe was ultimately made up of a single substance, which he identified as water. He held that water was the underlying material and source of all things, and that other substances were simply different forms of water. This belief was based on his observations of the natural world and his understanding of basic scientific principles. Thales believed that the earth itself floated on a vast ocean of water, and that this water was the source of all life. Thales' doctrine of the fundamental unity of nature had a profound influence on Western philosophy and science, and laid the groundwork for subsequent developments in these fields. It challenged traditional religious and mythological explanations of the natural world, and emphasized the importance of empirical observation and rational inquiry in understanding the universe."
            ),
            Philosopher(
                name: "Anaximander",
                biography: "Anaximander was a pre-Socratic philosopher who lived in the ancient Greek city of Miletus in the 6th century BCE. He was a student of Thales, and is often regarded as one of the most important thinkers of the early Greek philosophical tradition. Anaximander was a polymath, and made significant contributions to astronomy, geography, and philosophy. He is credited with creating the first known map of the world, and proposed a cosmological theory that held that the universe was infinite and eternal, and that all things emerged from an indeterminate substance he called the apeiron. Anaximander also developed important concepts in ethics and political philosophy, arguing that justice required a separation of powers in society and that all human beings should be treated with respect and dignity. Although many of his writings have been lost to history, Anaximander's ideas had a profound impact on subsequent generations of philosophers and scientists, and his legacy continues to be felt to this day.",
                philosopherImage: "Anaximander",
                doctrine: "His central doctrine was the concept of the apeiron, which means the infinite or the unbounded. Anaximander believed that the universe originated from this undifferentiated substance, which was infinite, eternal, and unchanging. He also believed in the cyclical nature of existence and the idea that all things are subject to a process of birth, growth, decay, and death. Anaximander's philosophy had a significant influence on later philosophers and thinkers, including Aristotle and Hegel."
            ),
            Philosopher(
                name: "Pythagoras",
                biography: "Pythagoras was an ancient Greek philosopher and mathematician born around 570 BCE. He is best known for his Pythagorean theorem and his belief in the importance of mathematics and music in understanding the universe. He founded the Pythagorean school and his teachings continue to inspire generations of scholars.",
                philosopherImage: "Pythagoras",
                doctrine: "Pythagoras developed a complex philosophy that emphasized the importance of mathematics, music, and harmony in the universe. He believed in the interconnectedness of all things and that the study of mathematics and music could help us understand the underlying order and harmony of the cosmos. Pythagoras' teachings also emphasized the pursuit of a virtuous life through self-discipline, moderation, and the cultivation of a pure soul. He believed in reincarnation and the transmigration of souls, and taught that the ultimate goal of life was to achieve a state of unity with the divine."
            ),
            Philosopher(
                name: "Philolaus",
                biography: "Philolaus was an ancient Greek philosopher and mathematician who lived in the late 5th and early 4th century BCE. He was born in the city of Croton in southern Italy and was a member of the Pythagorean school. Philolaus is best known for his contributions to Pythagorean philosophy and his development of a heliocentric model of the universe, in which the Earth, along with the other planets, revolved around a central fire, which he called the hearth of the universe. Philolaus also made important contributions to mathematics, particularly in the field of number theory. He wrote several works, but none have survived to the present day. Despite this, his ideas continued to be influential throughout the ancient world and his contributions to philosophy and mathematics are still studied today.",
                philosopherImage: "Philolaus",
                doctrine: "Philolaus was a Pythagorean philosopher who believed in the harmony and order of the universe. He proposed a heliocentric model of the universe, in which the Earth and other planets revolved around a central fire, and believed that this central fire was the source of all life and movement in the universe. Philolaus also emphasized the importance of mathematics in understanding the underlying principles of the universe, particularly in the study of number theory. He believed that numbers had mystical properties and could be used to uncover the secrets of the cosmos. Philolaus' philosophy was rooted in the pursuit of a pure and virtuous life, and he believed that the ultimate goal of human existence was to achieve a state of unity with the divine."
            ),
            Philosopher(
                name: "Zeno of Citium",
                biography: "Zeno of Citium was a Greek philosopher who lived in the 4th and 3rd centuries BCE. He was born in Citium, a city on the island of Cyprus, around 334 BCE. Zeno was interested in philosophy from a young age and studied under various philosophers in Athens, including the Cynic philosopher Crates. Around 301 BCE, Zeno founded the school of philosophy known as Stoicism. He taught in Athens for many years, and his school became one of the most influential in ancient Greece. Zeno's philosophy emphasized the importance of virtue, self-control, and rationality in achieving inner peace and happiness. Zeno's teachings were recorded in a series of books known as the Discourses, which were later compiled by his followers into a single work called the Enchiridion. Zeno died in Athens in 262 BCE at the age of 72. His legacy as the founder of Stoicism continued to shape Western philosophy for centuries to come.",
                philosopherImage: "ZenoOfCitium",
                doctrine: "Zeno of Citium was a Hellenistic philosopher who founded the school of Stoicism in Athens in the early 3rd century BC. The core principle of Stoicism, as developed by Zeno and his followers, is that human beings should strive to live in accordance with nature and reason. Zeno believed that virtue is the only true good, and that external things such as wealth, power, and fame are ultimately indifferent. He taught that individuals should cultivate self-control, wisdom, and courage in order to live a fulfilling life. According to Zeno, the universe is rational and governed by a divine providence, and individuals should accept their place in the natural order and live in harmony with the cosmos. He also emphasized the importance of living in the present moment and accepting whatever happens with equanimity. Zeno's teachings had a profound influence on subsequent philosophers, including the Roman Stoics Seneca, Epictetus, and Marcus Aurelius, and continue to be studied and discussed to this day."
            ),
            Philosopher(
                name: "Seneca the Younger",
                biography: "Lucius Annaeus Seneca, also known as Seneca the Younger, was a Roman philosopher, statesman, and dramatist who lived from 4 BC to 65 AD. He was born in Cordoba, Spain, into a wealthy equestrian family. Seneca received a thorough education in rhetoric, philosophy, and literature, and quickly rose to prominence as a lawyer and politician in Rome. He served as a tutor and advisor to the young Emperor Nero, who became his friend and benefactor. Seneca's philosophical works, which include essays, letters, and dialogues, drew heavily on the principles of Stoicism, advocating for a life of reason, virtue, and self-control. He believed that individuals should be guided by their own internal moral compass, rather than external circumstances or the opinions of others. Despite his reputation as a wise and principled philosopher, Seneca's association with Nero eventually led to his downfall. He was accused of conspiring against the emperor and ordered to commit suicide, which he did with dignity and composure. Today, Seneca is remembered as one of the greatest Stoic philosophers, whose works continue to inspire and inform readers around the world.",
                philosopherImage: "Seneca",
                doctrine: "Seneca the Younger was a prominent Stoic philosopher who emphasized the importance of reason, virtue, and self-control in living a fulfilling life. His philosophy focused on cultivating an inner sense of tranquility and resilience in the face of adversity. Seneca believed that individuals should strive to live in harmony with nature and the universe, accepting the things that cannot be changed and finding meaning in the present moment. He emphasized the importance of moderation, advocating for a life of simplicity and frugality. According to Seneca, true happiness and fulfillment come from living a virtuous life, rather than from external possessions or achievements. He also believed that individuals should strive to cultivate their own sense of inner strength, rather than relying on external sources of validation or support. Seneca's works, which include letters, essays, and plays, continue to be studied and admired for their insights into human nature, morality, and the human condition. His legacy as a philosopher, statesman, and writer remains a testament to the enduring power of Stoic philosophy."
            ),
            Philosopher(
                name: "Peter Abelard",
                biography: "Peter Abelard was a French philosopher, theologian, and logician who lived from 1079 to 1142. He is known for his work on the problem of universals and his role in the development of Scholasticism. Abelard had a scandalous relationship with his pupil, Heloise, which ended with him being castrated by her uncle. His major works include Sic et Non and Theologia Summi Boni. He died in Chalon-sur-Saône, France, in 1142.",
                philosopherImage: "PeterAbelard",
                doctrine: "Peter Abelard's philosophy centered around the use of reason and logic in theological inquiry. He believed that it was possible to use human reason to understand the nature of God and the world, and that faith should be subject to critical examination. Abelard is best known for his work on the problem of universals, in which he argued that abstract concepts such as redness and justice have no existence outside the mind. He also developed a theory of atonement that emphasized the moral influence of Christ's death on humanity, rather than a satisfaction of divine justice. Abelard's approach to theology was highly controversial in his own time, and he was accused of heresy on several occasions. Nonetheless, his ideas had a profound influence on later thinkers, including Thomas Aquinas. Overall, Abelard's philosophy can be characterized as a synthesis of reason and faith. He believed that reason was a powerful tool for understanding the nature of God and the world, but also recognized the limitations of human reason and the need for faith in divine revelation."
            ),
            Philosopher(
                name: "Thomas Aquinas",
                biography: "Thomas Aquinas was a medieval philosopher and theologian born in Roccasecca, Italy in 1225. He wrote the Summa Theologica, a synthesis of Christian theology and Aristotelian philosophy. Aquinas believed in the complementary relationship between faith and reason, emphasizing the use of reason to understand God and the world, while also recognizing the need for divine revelation. His ideas had a profound influence on later thinkers, and he was canonized as a saint by the Catholic Church in 1323.",
                philosopherImage: "ThomasAquinas",
                doctrine: "Thomas Aquinas was a prominent theologian and philosopher who lived in the 13th century. His work is widely regarded as one of the most influential in Western philosophy and theology. His doctrine is characterized by an integration of Aristotelian philosophy with Christian theology, and he believed that reason and faith were complementary means of knowing God. At the core of Aquinas' doctrine is his belief in the existence of God as the ultimate source of all being and goodness. He argued that God is the uncaused cause of the universe, and that everything in the world has its origin in God's creative act. Moreover, Aquinas believed that God's nature is characterized by perfection, simplicity, and infinity. Aquinas also developed a moral theory that is grounded in natural law, which he believed was discoverable through reason. According to Aquinas, human beings have an inherent sense of right and wrong, which allows them to understand the moral law that God has implanted in nature. He argued that this natural law is the basis of all human law and that it is superior to any humanly created law that contradicts it. Finally, Aquinas developed a comprehensive understanding of the human person. He believed that human beings are composed of both body and soul, and that the soul is the form of the body. Moreover, he argued that the ultimate end of human life is to achieve union with God, and that this is possible through a life of virtue and contemplation. In summary, Thomas Aquinas' doctrine is characterized by a synthesis of Aristotelian philosophy and Christian theology, and it emphasizes the importance of reason and natural law in understanding the world and our place in it."
            ),
            Philosopher(
                name: "Julian of Norwich",
                biography: "Julian of Norwich was an English mystic and theologian who lived in the 14th century. Little is known about her life, but she is believed to have been born in 1342 and lived most of her life as an anchorite in Norwich, England. Julian is best known for her book Revelations of Divine Love, which is considered to be one of the greatest works of Christian mysticism. The book is a series of visions and revelations that Julian received during a serious illness in 1373. These visions gave her a deep understanding of God's love and grace and taught her to trust in God's mercy and goodness. Julian's book is notable for its emphasis on God's love and the concept of God as a loving parent who desires to bring all of humanity into a closer relationship with Him. This was a radical departure from the prevailing theology of the time, which emphasized sin and punishment. Julian's teachings had a profound impact on later Christian mystics and theologians, including Thomas Merton and Evelyn Underhill. She is also known for her compassion and her devotion to caring for the sick and dying, which she practiced as an anchorite. Julian died sometime after 1416, but her legacy continues to inspire Christians around the world. She was canonized by the Anglican Church in 1980, and her feast day is celebrated on May 8th.",
                philosopherImage: "JulianOfNorwich",
                doctrine: "Julian of Norwich's doctrine emphasizes the infinite and all-encompassing love of God. She believed that God's love is the foundation of all existence and that it extends to all of humanity, regardless of their sins or shortcomings. Julian also believed in the concept of sin, but she viewed it as a necessary part of the human experience that helps us to understand and appreciate God's love and mercy. She taught that God does not punish us for our sins but rather uses them to draw us closer to Himself. Central to Julian's doctrine is the idea that all people are called to seek and experience God's love in their own unique way. She believed that every individual has a personal relationship with God and that it is through this relationship that we come to know and understand God's infinite love. Julian also emphasized the importance of prayer and contemplation as a means of connecting with God. She believed that by quieting our minds and hearts, we can enter into a deeper understanding of God's love and grace. Overall, Julian's doctrine is characterized by its emphasis on love, mercy, and compassion. She saw God as a loving parent who desires nothing more than to bring all of humanity into a closer relationship with Himself. Her teachings continue to inspire and guide Christians around the world today."
            ),
            Philosopher(
                name: "Meister Eckhart",
                biography: "Meister Eckhart was a German theologian and philosopher who lived in the 13th and 14th centuries. He is best known for his mystical teachings, which emphasized the unity of the soul with God and the importance of detachment from worldly attachments. Despite controversy and accusations of heresy, Eckhart's legacy has endured, and his ideas continue to inspire those seeking a deeper understanding of the human experience and our relationship with the divine.",
                philosopherImage: "MeisterEckhart",
                doctrine: "Meister Eckhart's doctrine is centered on the idea of achieving union with God through contemplation and detachment from worldly attachments. He believed in the unity of the individual soul with the divine and emphasized the importance of direct experience of God. Eckhart also stressed individual responsibility and free will in the pursuit of spiritual growth, believing that each person had the capacity to achieve union with God through self-discovery and inner transformation. His teachings have influenced both Christian and non-Christian philosophical traditions, emphasizing the importance of the inner life and direct experience of the divine."
            )
        ]
    }
}

//enum PhilosophyType: String {
//    case ancient
//    case medieval
//    case renaissance
//    case enlightenment
//    case nineteenthCentury
//    case twentiethCentury
//    case contemporary
//}
