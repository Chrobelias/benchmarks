(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.+ (re.* (re.range "6" "8")))))
(assert (str.in_re y (re.union (str.to_re "99") (re.* (re.* (re.range "7" "9"))))))
(assert (str.in_re x (re.union (str.to_re "29") (re.union (re.++ (re.range "2" "9") (re.* (str.to_re "9"))) (str.to_re "90")))))
(assert (str.in_re a (re.* (re.++ (str.to_re "228") (str.to_re "3")))))

(assert (= (+ (* 3 (str.to_int x)) (* 3 (str.to_int y)) (* 6 (str.to_int z)) (* 8 (str.to_int a))) 40))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 9) (str.len y)) (* (- 9) (str.len z)) (* (- 9) (str.len a))) 1))

(check-sat)