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
(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (= (str.++ z a) (str.++ "86" y x)))

(assert (str.in_re z (re.* (re.union (re.range "4" "8") (re.+ (str.to_re "3"))))))
(assert (str.in_re x (re.union (re.range "1" "7") (re.* (str.to_re "31")))))
(assert (str.in_re a (re.* (re.+ (re.* (re.range "5" "8"))))))
(assert (str.in_re y (re.+ (re.++ (re.* (str.to_re "392")) (re.+ (re.range "7" "9"))))))

(assert (= (+ (* 8 (str.len a)) (* (- 10) (str.to_int x)) (* 9 (str.to_int a))) 30))

(check-sat)