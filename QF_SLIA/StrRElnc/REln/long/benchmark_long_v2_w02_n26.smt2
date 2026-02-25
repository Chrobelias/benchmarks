(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.union (re.* (str.to_re "374")) (re.range "6" "9"))))
(assert (str.in_re x (re.union (str.to_re "27") (re.union (str.to_re "205") (re.* (str.to_re "96"))))))

(assert (> (+ (* 4 (str.len x)) (* 7 (str.len y)) (* (- 2) (str.to_int x))) 96))

(check-sat)