(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.++ (re.union (str.to_re "39") (re.+ (str.to_re "52"))) (str.to_re "540"))))
(assert (str.in_re y (re.++ (re.range "5" "9") (re.union (str.to_re "69") (re.+ (re.range "6" "9"))))))
(assert (str.in_re z (re.union (re.* (re.* (str.to_re "457"))) (re.range "7" "9"))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "88") (str.to_re "7")))))
(assert (str.in_re b (re.++ (str.to_re "70") (re.++ (str.to_re "705") (re.+ (str.to_re "712"))))))

(assert (> (+ (str.to_int x) (* (- 5) (str.to_int y)) (* (- 10) (str.to_int z)) (* (- 2) (str.to_int a)) (* 2 (str.to_int b))) 27))
(assert (> (+ (* (- 3) (str.len z)) (* 4 (str.len a)) (* (- 9) (str.to_int x))) 19))
(assert (> (+ (* (- 7) (str.to_int x)) (* (- 4) (str.to_int y)) (str.to_int z) (* 10 (str.to_int a)) (* 2 (str.to_int b))) 75))

(check-sat)