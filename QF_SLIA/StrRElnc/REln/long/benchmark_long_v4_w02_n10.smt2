(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.* (re.range "0" "9")) (re.++ (str.to_re "362") (str.to_re "1")))))
(assert (str.in_re a (re.union (str.to_re "66") (re.+ (str.to_re "813")))))
(assert (str.in_re z (re.union (str.to_re "2") (re.union (re.+ (str.to_re "2")) (str.to_re "529")))))
(assert (str.in_re y (re.++ (re.range "2" "4") (re.+ (re.+ (re.range "3" "9"))))))

(assert (< (+ (str.to_int x) (* (- 5) (str.to_int y)) (* 4 (str.to_int z)) (* (- 7) (str.to_int a))) 20))
(assert (< (+ (* 8 (str.len x)) (* (- 2) (str.len y)) (* 7 (str.len z)) (* (- 4) (str.len a))) 8))

(check-sat)