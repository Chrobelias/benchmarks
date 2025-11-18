(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.++ (str.to_re "3") (re.* (str.to_re "0"))) (str.to_re "9"))))
(assert (str.in_re y (re.* (re.union (str.to_re "75") (re.union (re.+ (str.to_re "96")) (str.to_re "17"))))))
(assert (str.in_re z (re.union (re.++ (re.* (re.range "2" "8")) (str.to_re "681")) (str.to_re "38"))))
(assert (str.in_re a (re.+ (re.union (re.range "0" "3") (re.++ (str.to_re "7") (re.* (str.to_re "188")))))))

(assert (>= (+ (* (- 3) (str.len x)) (* (- 6) (str.len y)) (* 8 (str.len a)) (* (- 5) (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 8) (str.to_int a))) 42))

(check-sat)