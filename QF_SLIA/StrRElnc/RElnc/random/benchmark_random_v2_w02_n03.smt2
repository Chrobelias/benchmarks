(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "75")))

(assert (str.in_re x (re.union (re.range "2" "5") (re.* (re.union (re.range "3" "7") (str.to_re "9"))))))
(assert (str.in_re y (re.* (re.* (re.* (re.range "3" "7"))))))

(assert (> (+ (* 5 (str.to_int x)) (* (- 4) (str.to_int y))) 44))
(assert (> (+ (* (- 9) (str.len x)) (* 8 (str.len y))) 47))

(check-sat)