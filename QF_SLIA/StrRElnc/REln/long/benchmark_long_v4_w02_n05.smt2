(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (str.to_re "15") (re.union (re.* (re.range "1" "4")) (str.to_re "153")))))
(assert (str.in_re z (re.* (str.to_re "4"))))
(assert (str.in_re y (re.union (re.range "4" "6") (re.* (str.to_re "8")))))
(assert (str.in_re a (re.union (re.union (str.to_re "3") (str.to_re "415")) (re.* (str.to_re "392")))))

(assert (> (+ (* (- 5) (str.len y)) (* 7 (str.len a)) (* (- 10) (str.to_int y)) (* (- 5) (str.to_int a))) 87))

(check-sat)