(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ a x "96" y)))

(assert (str.in_re x (re.union (re.union (str.to_re "54") (re.* (re.range "3" "5"))) (str.to_re "261"))))
(assert (str.in_re z (re.union (re.+ (re.range "3" "9")) (re.union (str.to_re "856") (re.+ (str.to_re "663"))))))
(assert (str.in_re y (re.++ (re.* (re.+ (str.to_re "252"))) (re.+ (str.to_re "7")))))
(assert (str.in_re a (re.+ (re.union (str.to_re "71") (re.union (str.to_re "302") (re.range "6" "8"))))))

(assert (> (+ (* 3 (str.to_int x)) (* 9 (str.to_int y)) (* 5 (str.to_int z)) (* (- 8) (str.to_int a))) 21))
(assert (< (+ (* 4 (str.len x)) (str.len y) (* (- 7) (str.len z)) (* 9 (str.len a))) 99))

(check-sat)