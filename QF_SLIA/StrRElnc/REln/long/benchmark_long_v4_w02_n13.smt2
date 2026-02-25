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
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re z (re.++ (re.union (re.* (str.to_re "651")) (str.to_re "351")) (re.+ (re.range "7" "9")))))
(assert (str.in_re y (re.union (re.union (re.+ (str.to_re "73")) (str.to_re "9")) (str.to_re "394"))))
(assert (str.in_re a (re.+ (re.++ (re.range "1" "6") (re.+ (re.range "6" "8"))))))
(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "51")) (str.to_re "325")) (re.* (str.to_re "77")))))

(assert (<= (+ (* 6 (str.len z)) (* (- 10) (str.to_int z))) 91))

(check-sat)