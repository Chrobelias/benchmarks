(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ y "57")))

(assert (str.in_re y (re.* (re.union (re.* (re.range "7" "9")) (str.to_re "22")))))
(assert (str.in_re x (re.union (re.* (re.range "5" "7")) (re.+ (str.to_re "71")))))

(assert (< (+ (- (str.len x)) (* 9 (str.len y)) (* 9 (str.to_int y))) 12))
(assert (= (+ (* 5 (str.len x)) (* 7 (str.len y))) 92))
(assert (< (+ (* 7 (str.len x)) (* (- 8) (str.len y))) 9))

(check-sat)