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

(assert (str.in_re x (re.union (str.to_re "52") (re.union (re.++ (re.+ (str.to_re "31")) (str.to_re "730")) (re.range "7" "9")))))
(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "315")) (re.* (str.to_re "3"))) (str.to_re "264"))))
(assert (str.in_re z (re.union (re.* (str.to_re "51")) (re.++ (str.to_re "777") (re.* (str.to_re "7"))))))
(assert (str.in_re a (re.union (str.to_re "98") (re.union (re.union (str.to_re "320") (re.+ (str.to_re "665"))) (str.to_re "22")))))
(assert (str.in_re b (re.union (re.* (str.to_re "646")) (re.union (str.to_re "46") (str.to_re "7")))))

(assert (= (+ (* 4 (str.len y)) (* 2 (str.to_int x)) (* 6 (str.to_int z)) (* 8 (str.to_int b))) 94))
(assert (>= (+ (* (- 3) (str.len x)) (* (- 2) (str.len y)) (* 7 (str.len z)) (* (- 10) (str.len a)) (* 7 (str.len b))) 46))

(check-sat)