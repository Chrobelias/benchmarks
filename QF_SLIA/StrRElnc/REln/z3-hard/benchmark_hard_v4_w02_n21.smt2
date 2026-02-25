(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re a (re.union (re.union (str.to_re "68") (re.+ (str.to_re "2"))) (re.+ (re.range "6" "8")))))
(assert (str.in_re x (re.union (str.to_re "416") (re.union (re.* (str.to_re "971")) (str.to_re "341")))))
(assert (str.in_re y (re.* (re.++ (str.to_re "98") (re.* (str.to_re "9"))))))
(assert (str.in_re z (re.+ (re.union (str.to_re "38") (str.to_re "241")))))

(assert (> (+ (* (- 9) (str.len x)) (* 7 (str.len y)) (* (- 10) (str.len z)) (* 6 (str.len a))) 20))
(assert (= (+ (* 3 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 10) (str.to_int z)) (* 10 (str.to_int a))) 10))

(check-sat)