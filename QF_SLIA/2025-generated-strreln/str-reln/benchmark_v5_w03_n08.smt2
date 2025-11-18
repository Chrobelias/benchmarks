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

(assert (str.in_re x (re.++ (re.* (re.++ (str.to_re "94") (str.to_re "44"))) (str.to_re "26"))))
(assert (str.in_re y (re.+ (str.to_re "58"))))
(assert (str.in_re z (re.union (re.union (str.to_re "606") (str.to_re "3")) (re.* (str.to_re "88")))))
(assert (str.in_re a (re.* (re.+ (re.union (str.to_re "627") (str.to_re "33"))))))
(assert (str.in_re b (re.+ (re.union (str.to_re "6") (re.++ (str.to_re "85") (str.to_re "65"))))))

(assert (= (+ (* (- 3) (str.len y)) (* (- 5) (str.to_int y)) (* 5 (str.to_int b))) 68))
(assert (= (+ (* 5 (str.len x)) (* (- 9) (str.len y)) (* 9 (str.len z)) (* (- 9) (str.len b))) 50))

(check-sat)