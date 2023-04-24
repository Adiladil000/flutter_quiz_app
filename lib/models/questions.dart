class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question": "Adobe photoshop proqramında şəkli neqativ formaya çevirən əmr hansıdır ?",
    "options": ["CTRL+C", "CTRL+S", "CTRL+I", "CTRL+A"],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "İnternet şəbəkəsində olan ən populyar onlayn pulsuz ensiklopediya hansıdır ?",
    "options": ["Wikipedia", "Britannica", "Google Maps", "Windows"],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "İnternet Explorer browseri hansı şirkətin məhsuludur ?",
    "options": ['Adobe', 'Microsoft', 'Google', 'Windows'],
    "answer_index": 3,
  },
  {
    "id": 4,
    "question": "Microsoft Word proqramında Cədvəlin xassələrindən Alignment üçün Right seçimini etmək hansı işi görür ?",
    "options": [
      'Cədvəlin stilini standart stilə çevirir.',
      'Cədvəli yeni sətrə keçirir',
      'Cədvəlin mətnlərini sağa\nnəzərən cərgəyə düzür.',
      'Cədvəli sənəddə sağ tərəfə şəkir.'
    ],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "Microsfot Exceldə hansı funksiya hər hansı sütunlar üzrə ədədlərin ədədi ortasını hesablayır ?",
    "options": ['AVERAGE', 'SERİESSUM', 'COUNT', 'ADD'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question":
        "Internet Explorerdə HTML səhifəni hansı fayl tipi ilə bütöv(mətn+şəkillər) formada, amma cəmi bircə fayl şəklində yaddaşa vermək olur ?",
    "options": ['İE', 'HTML', 'Mht', 'HTM'],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "Kompüter proqramlarının istifadəçi interfeysi təxmini olaraq nədir ?",
    "options": [
      'Proqramın yerləşdiyi papka',
      'Proqramın kömək bölməsi',
      'İstifadəçi ilə istehsalçı arasında əlaqə\nüçün nəzərdə tutulan bölmə',
      'Proqramın istifadəçiyə görünən tərəfi'
    ],
    "answer_index": 3,
  },
  {
    "id": 8,
    "question": "Database deyəndə nə başa düşülür ?",
    "options": [
      'Verilənlər bazasının ixtiyari elementi',
      'Verilənlər bazası',
      'Verilənlər bazasının yerləşdiyi host',
      'Verilənlər bazasının cədvəli'
    ],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Windows ƏS-də hansı adda papka yaratmaq olmaz ?",
    "options": ['Istənilən adda papka yaratmaq olar.', 'Call', 'Windows', 'Con'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Informasiyanın məxfiliyinin qorunması ilə İnformatikanın hansı sahəsi məşğul olur ?",
    "options": ['Riyazi məntiq', 'Alqoritmlər nəzəriyyəsi', 'Qraflar nəzəriyyəsi', 'Kriptoqrafiya'],
    "answer_index": 3,
  },
  {
    "id": 11,
    "question": "İnternet sözünün açması?",
    "options": ['İntenational computer network', 'İnterconnected networks.', 'İnteresting networks', 'İnteresting netbooks'],
    "answer_index": 0,
  },
  {
    "id": 12,
    "question": "İlk internet axtarış motoru hansıdır ?",
    "options": ['Aliweb', 'Altavista', 'Yahoo', 'Google'],
    "answer_index": 1,
  },
  {
    "id": 13,
    "question": "Hansı web browser tarixdə ilk hesab olunur ?",
    "options": ['NCSA Mosaic', 'Mozilla', 'Netscape Navigator', 'Apple Safari'],
    "answer_index": 2,
  },
  {
    "id": 14,
    "question": "İlk elektron poçt proqramı neçənci ildə işlənib hazırlanmışdır?",
    "options": ['1969', '1983', '1971', '1958'],
    "answer_index": 1,
  },
  {
    "id": 15,
    "question": "Dünya internet şəbəkəsinin vahid idarəetmə mərkəzi harada yerləşir?",
    "options": ['Vaşinqtonda', 'Cenevrədə', 'Berndə', 'İnternetdə vahid idarəetmə mərkəzi\nyoxdur.'],
    "answer_index": 3,
  },
];
