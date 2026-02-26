(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= (str.++ a z) (str.++ "22" y x)))

(assert (str.in_re x (re.+ (re.union (re.range "5" "9") (re.+ (re.+ (str.to_re "429")))))))
(assert (str.in_re y (re.++ (str.to_re "755") (re.++ (re.+ (str.to_re "318")) (re.* (re.range "1" "3"))))))
(assert (str.in_re z (re.++ (str.to_re "7") (re.* (re.range "1" "5")))))
(assert (str.in_re a (re.+ (re.range "1" "8"))))

(assert (= (+ (* 9 (str.len x)) (* (- 4) (str.len a)) (* (- 9) (str.to_int x))) 79))

(check-sat)