(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.range "7" "9"))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "743")) (re.++ (re.+ (str.to_re "86")) (str.to_re "986")))))
(assert (str.in_re z (re.union (str.to_re "695") (re.+ (str.to_re "1")))))
(assert (str.in_re a (re.union (re.+ (str.to_re "81")) (re.+ (re.range "6" "9")))))

(assert (<= (+ (* (- 5) (str.len a)) (* 7 (str.to_int x)) (* (- 4) (str.to_int a))) 19))
(assert (= (+ (* (- 2) (str.len x)) (* 9 (str.to_int a))) 67))
(assert (> (+ (* 7 (str.to_int x)) (* 9 (str.to_int y)) (* 8 (str.to_int z)) (* (- 4) (str.to_int a))) 73))

(check-sat)